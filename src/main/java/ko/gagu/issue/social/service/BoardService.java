package ko.gagu.issue.social.service;

import java.sql.Timestamp;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ko.gagu.issue.social.dao.BoardDAO;
import ko.gagu.issue.social.dto.BoardDTO;

@Service
public class BoardService {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired BoardDAO boardDao;

	public ModelAndView write(RedirectAttributes rAttr, Map<String, String> param) {
        ModelAndView mav = new ModelAndView();
        String page = "boardWrite";

        BoardDTO dto = new BoardDTO();
        dto.setIs_notice(false);
        dto.setPo_title(param.get("po_title"));
        dto.setWriter(0);
            
        Timestamp currentTimestamp = new Timestamp(System.currentTimeMillis());
        dto.setWritten_datetime(currentTimestamp);
        dto.setPo_view_count(0);
        
        int result = boardDao.insertBoard(dto);
        if (result > 0) {
            logger.info("게시글 작성 성공");
        } else {
            logger.error("게시글 작성 실패");
        }

        return mav;
    }

}
