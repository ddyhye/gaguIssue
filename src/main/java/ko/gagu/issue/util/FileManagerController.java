package ko.gagu.issue.util;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FileManagerController {
	
	Logger logger = LoggerFactory.getLogger(getClass());

	@Value("${spring.servlet.multipart.location}")
	private String root;

	// [jeong] 클라이언트가 서버에게 파일을 요청시 서버는 해당 경로의 파일을(확장자에 맞춰서) 보내준다.
	@ResponseBody
	@GetMapping("/file/{folder}/{filePath}")
	public ResponseEntity<Resource> fileView(@PathVariable String folder, @PathVariable String filePath) {
		// 1. 특정 경로에서 파일을 읽어와 Resource 로 만든다
		Resource resource = new FileSystemResource(root + "/" + folder + "/" + filePath);
		logger.info(root + "/" + filePath);
		// 2. 보내질 파일의 형태를 지정해준다
		// 헤더에 보내질 파일의 형태를 지정해준다
		HttpHeaders header = new HttpHeaders();

		// 2-1. 예를 들면 image/gif, image/png, image/jpg, image/jpeg
		// 컴퓨터는 gif, png 가 이미지인지 모른다 이것을 해결해주는것이 따로 있음
		// 이 확장자가 image 인지 아닌지 알 수 없다 반복문과 if 문으로 복잡하게 확인해야하는
		// 과정이 있었는데 Spring 에서 이 과정을 대신 해주는 메서드를 제공한다
		try {
			String type = Files.probeContentType(Paths.get(root + "/" + folder + "/" + filePath)); // 경로를 주면 해당 파일의 mime-type 을 알아낸다
			header.add("content-type", type);
		} catch (IOException e) {
			e.getStackTrace();
		}
		// 클라이언트에게 보낼 내용(데이터), 헤더, 상태(200 또는 HttpStatus.OK 는 정상이라는 의미이다)
		return new ResponseEntity<Resource>(resource, header, HttpStatus.OK);
	}
}
