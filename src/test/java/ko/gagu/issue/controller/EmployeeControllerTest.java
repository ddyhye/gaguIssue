package ko.gagu.issue.controller;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.font.PDType0Font;
import org.apache.pdfbox.pdmodel.font.PDType1Font;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.HttpHeaders;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import static org.junit.jupiter.api.Assertions.assertEquals;

class EmployeeControllerTest {

	@Autowired
    private ResourceLoader resourceLoader;
	
	@Test
    @DisplayName("생년월일 표시 코드 변경 테스트")
    void birthDateTest() {
        String year = "1990";
        String month = "2";
        String day = "8";
        String before = year + "-" + String.format("%02d", Integer.parseInt(month)) + "-" + String.format("%02d", Integer.parseInt(day));
        System.out.println(before);

        int changedYear = Integer.parseInt(year);
        int changedMonth = Integer.parseInt(month);
        int changedDay = Integer.parseInt(day);

        String after = LocalDate.of(changedYear, changedMonth, changedDay)
                .format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        System.out.println(after);

        // before 와 after 가 같다는 것을 검증
        assertEquals(before, after);
    }
    
    @Test
    @DisplayName("서버 로컬에서 html 파일을 불러오고 pdf 변환한 후 클라이언트에게 pdf 를 전달")
    void htmlToPdf() {
    	File documentFile = new File("C:\\filestore\\document\\3474547f-d903-4bff-a07f-3369c11205b7.html");
    	File pdfFile = new File("C:\\filestore\\document\\pdf\\123.pdf"); 
    	try {
			Document htmlDoc = Jsoup.parse(documentFile, "UTF-8", "");
			
			PDDocument pdfDoc = new PDDocument();
	        PDPage page = new PDPage();
	        pdfDoc.addPage(page);
	        
	        PDPageContentStream contentStream = new PDPageContentStream(pdfDoc, page);
	        // InputStream fontStream = getClass().getResourceAsStream("/font/NanumGothic.otf");
	        // Resource fontResource = resourceLoader.getResource("classpath:/static/font/NanumGothic.otf");
	        // System.out.println(fontResource);
	        // InputStream fontStream = fontResource.getInputStream();
	        
	        PDType0Font font = PDType0Font.load(pdfDoc, new File("C:\\filestore\\font\\NanumGothic.otf"));
	        contentStream.beginText();
	        contentStream.setFont(font, 12);
	        contentStream.newLineAtOffset(100, 700);

	        for (Element element : htmlDoc. body().children()) {
	        	System.out.println(element);
	            contentStream.showText(element.text());
	            contentStream.newLineAtOffset(0, -15);
	        }
	        
	        contentStream.endText();
	        contentStream.close();
	        
	        pdfDoc.save(pdfFile);
	        pdfDoc.close();
	        
			Resource resource = new FileSystemResource(pdfFile);
			HttpHeaders header = new HttpHeaders();

	        System.out.println(pdfFile.getName());
		} catch (IOException e) {
			e.printStackTrace();
		}

    	System.out.println(documentFile.getName());
    }
}
