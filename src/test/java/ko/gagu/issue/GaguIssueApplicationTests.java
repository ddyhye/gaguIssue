package ko.gagu.issue;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import ko.gagu.issue.dao.DocumentDAO;
import ko.gagu.issue.dto.ApprovalDTO;

@SpringBootTest
class GaguIssueApplicationTests {

	@Autowired
	private DocumentDAO dao;
	
	@Value("${spring.servlet.multipart.location}")
	private String root;
	
	void contextLoads() {
	}
	
	@Test
	void excelTest() {
		// POI 라이브러리
		// https://blog.naver.com/since201109/222483943578
		var data = new ArrayList<HashMap<String, String>>();
		for (int i = 0; i < 10; i++) {
			var row = new HashMap<String,String>();
			row.put("id", "" + i);
			row.put("name", "kimjeongwon");
			row.put("age", "24");
			row.put("birthDate", "2001-05-12");
			data.add(row);
		}
		
		Workbook excel = new XSSFWorkbook();
		
		Sheet sheet0 = excel.createSheet();
		int column = 0;
		for (int r = 0; r < data.size(); r++) {
			Row row = sheet0.createRow(r);
			column = 0;
			for (Entry<String, String> value : data.get(0).entrySet()) {
				row.createCell(column++).setCellValue(value.getValue());
			}
		}
		
		// filestore 밑에 excel 폴더가 생성되어있어야함
		try {
			String filepath = root + "\\excel\\text.xlsx"; 
			Path path = Paths.get(filepath);
            if (!Files.exists(path)) {
                Files.createDirectories(path);
                System.out.println("폴더 생성: " + filepath);
            }
            
			FileOutputStream fos = new FileOutputStream(filepath);
			excel.write(fos);
			fos.close();
			excel.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		System.out.println(data);
	}
}
