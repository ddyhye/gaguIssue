package ko.gagu.issue.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Timestamp;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ko.gagu.issue.dao.BoardDAO;
import ko.gagu.issue.dto.BoardDTO;

@Service
public class BoardService {

    Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    BoardDAO boardDao;

    private static final String UPLOAD_DIR = "C:/filestore";

    public ModelAndView write(RedirectAttributes rAttr, Map<String, String> param, MultipartFile file) {
        ModelAndView mav = new ModelAndView();
        String page = "boardWrite";

        BoardDTO dto = new BoardDTO();
        dto.setIs_notice(false);
        dto.setPo_title(param.get("po_title"));
        dto.setPo_content(param.get("po_content"));
        dto.setWriter(0);

        Timestamp currentTimestamp = new Timestamp(System.currentTimeMillis());
        dto.setWritten_datetime(currentTimestamp);
        dto.setPo_view_count(0);

        // 1 게시글 데이터베이스에 넣기
        

        int result = boardDao.insertBoard(dto);
     // 2 게시글 번호를 가져오기
        int post_id = dto.getPost_id();
        // 3 파일 저장한 후 저장한 파일 이름 가져오기
        // 4 게시글 번호, 오리진 네임, 뉴 파일네임 으로 filestore 테이블에 넣기
        // 4-1 파일 객체에서 오리진 네임 꺼내오기
        try {
            if (file != null && !file.isEmpty()) {
                String storedFileName = storeFile(file);
                int fileIdx = saveFileInfoToDatabase(post_id, file.getOriginalFilename(), storedFileName);
                dto.setIdx_file(fileIdx);
            } else {
                dto.setIdx_file(null); 
            }
        } catch (IOException e) {
            logger.error("파일 업로드 중 오류 발생: " + e.getMessage());
        }
        
        if (result > 0) {
            logger.info("게시글 작성 성공");
            rAttr.addFlashAttribute("message", "게시글이 성공적으로 작성되었습니다.");
            mav.setViewName("redirect:/boardlist.go");
        } else {
            logger.error("게시글 작성 실패");
            rAttr.addFlashAttribute("message", "게시글 작성에 실패하였습니다.");
            mav.setViewName("redirect:/boardwrite.go");
        }

        return mav;
    }

    public String upload(MultipartFile file) {
        try {
            if (file != null && !file.isEmpty()) {
                String storedFileName = storeFile(file);
                return storedFileName;
            }
        } catch (IOException e) {
            logger.error("파일 업로드 중 오류 발생: " + e.getMessage());
        }
        return null;
    }

    public String multiUpload(MultipartFile[] files) {
        try {
            if (files != null && files.length > 0) {
                String[] storedFileNames = new String[files.length];
                for (int i = 0; i < files.length; i++) {
                    storedFileNames[i] = storeFile(files[i]);
                }
                return storedFileNames[0];
            }
        } catch (IOException e) {
            logger.error("다중 파일 업로드 중 오류 발생: " + e.getMessage());
        }
        return null;
    }

    public ResponseEntity<Resource> download(String fileName) {
        try {
            Path filePath = Paths.get(UPLOAD_DIR).resolve(fileName).normalize();
            Resource resource = new UrlResource(filePath.toUri());
            if (resource.exists()) {
                return ResponseEntity.ok()
                        .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + resource.getFilename() + "\"")
                        .body(resource);
            } else {
                logger.error("파일을 찾을 수 없습니다: " + fileName);
                return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
            }
        } catch (Exception e) {
            logger.error("파일 다운로드 중 오류 발생: " + e.getMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    private String storeFile(MultipartFile file) throws IOException {
        String originalFileName = StringUtils.cleanPath(file.getOriginalFilename());
        String storedFileName = System.currentTimeMillis() + "_" + originalFileName;
        Path targetLocation = Paths.get(UPLOAD_DIR).resolve(storedFileName);
        Files.copy(file.getInputStream(), targetLocation);
        return storedFileName;
    }

    private int saveFileInfoToDatabase(int post_id, String origin_name, String file_name) {
        return boardDao.insertFile(post_id, origin_name, file_name);
    }
}
