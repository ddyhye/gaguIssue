package ko.gagu.issue.util;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;

import ko.gagu.issue.dto.DocumentDTO;

@Component
public class FileManagerUtil {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@Value("${spring.servlet.multipart.location}")
	private String root;

	// [jeong] folder 에는 파일을 저장할 폴더의 이름 C:/filestore/{foloder} 이 되고 file 의 정보로 해당 경로에 저장한다.
	public String saveFile(MultipartFile file, String folder) {
		// 1. 파일명 추출하기.
		String origin_name = file.getOriginalFilename();

		// 2. 새 파일명 생성하기.
		String ext = origin_name.substring(origin_name.lastIndexOf("."));
		String file_name = UUID.randomUUID() + ext;
		
		try {
			byte[] file_content = file.getBytes();
			Path path = Paths.get(root + "/" + folder + "/" + file_name);
			if (Files.notExists(path.getParent())) {
				Files.createDirectories(path.getParent());
			}
			Files.write(path, file_content);
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}		
		return file_name;
	}
}
