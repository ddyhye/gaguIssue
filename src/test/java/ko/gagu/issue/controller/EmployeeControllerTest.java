package ko.gagu.issue.controller;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import ko.gagu.issue.dao.DocumentDAO;
import ko.gagu.issue.dto.ApprovalDTO;
import ko.gagu.issue.util.DateUtil;
import ko.gagu.issue.util.FileManagerUtil;

class EmployeeControllerTest {
	
	@DisplayName("생년월일 표시 코드 변경 테스트")
	void birthDateTest() {
		String year = "1990";
		String month = "2";
		String day = "8";
		String before = year + "-" + String.format("%02d", Integer.parseInt(month)) + "-"
				+ String.format("%02d", Integer.parseInt(day));
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
	
	@DisplayName("연속된 숫자 묶어주기")
	void testGroupConsecutiveNumbers() {
		int[] selectedTime = {9, 10};
		int startTime = 0;
		int endTime = 0;
		Arrays.sort(selectedTime);
		var rsvTime = new ArrayList<Map<String, Integer>>();
		
		for (int idx = 0; idx < selectedTime.length; idx++) {
			if (selectedTime.length == 1) {
				var timeMap = new HashMap<String, Integer>();
				timeMap.put("startTime", selectedTime[0]);
				timeMap.put("endTime", selectedTime[0]);
				rsvTime.add(timeMap);
			}
			if (startTime == 0) {
				startTime = selectedTime[idx];
			} else if (selectedTime[idx - 1] == selectedTime[idx] - 1) {
				System.out.printf("continue : %d\n", selectedTime[idx]);
				if (idx == selectedTime.length - 1) {
					var timeMap = new HashMap<String, Integer>();
					timeMap.put("startTime", startTime);
					timeMap.put("endTime", selectedTime[idx]);
					rsvTime.add(timeMap);
				} else {					
					continue;
				}
			} else {
				var timeMap = new HashMap<String, Integer>();
				if (idx == selectedTime.length - 1) {
					endTime = selectedTime[idx - 1];
					timeMap.put("startTime", startTime);
					timeMap.put("endTime", endTime);
					rsvTime.add(timeMap);
					timeMap = new HashMap<String, Integer>();
					timeMap.put("startTime", selectedTime[idx]);
					timeMap.put("endTime", selectedTime[idx]);
					rsvTime.add(timeMap);
				} else {				
					endTime = selectedTime[idx - 1];
					timeMap.put("startTime", startTime);
					timeMap.put("endTime", endTime);
					rsvTime.add(timeMap);
					startTime = 0;
					endTime = 0;
				}
			}	
		}
		System.out.println(rsvTime);
	}
	
	void test() {
        int[] selectedTime = {9, 13, 14, 16, 17, 18};
        Arrays.sort(selectedTime); // 배열 정렬

        List<Map<String, Integer>> result = new ArrayList<>(); // 결과를 담을 리스트<맵> 생성

        int start = selectedTime[0]; // 시작 숫자 설정
        int end = start; // 끝 숫자 초기화

        for (int i = 1; i < selectedTime.length; i++) {
        	System.out.printf("%d %d\n", start, end);
            if (selectedTime[i] == end + 1) {
                end = selectedTime[i]; // 연속된 숫자일 경우 끝 숫자 갱신
            } else {
                Map<String, Integer> map = new HashMap<>(); // 맵 생성
                map.put("start", start); // 시작 숫자 저장
                map.put("end", end); // 끝 숫자 저장
                result.add(map); // 리스트에 맵 추가

                start = selectedTime[i]; // 다음 시작 숫자 설정
                end = start; // 다음 끝 숫자 초기화
            }
        }

        // 마지막 구간 추가
        Map<String, Integer> map = new HashMap<>();
        map.put("start", start);
        map.put("end", end);
        result.add(map);

        // 결과 출력
        for (Map<String, Integer> interval : result) {
            System.out.printf("start: %d, end: %d\n", interval.get("start"), interval.get("end"));
        }		
	}
	
	/*
	 * @Test
	 * 
	 * @DisplayName("html 파일을 pdf 파일로 변환") void htmlToString() { String filePath =
	 * "C:\\filestore\\document\\c6da0943-f2b3-41cd-ab43-5401a12ecac3.html"; String
	 * pdfPath = "C:\\filestore\\document\\pdf\\123.pdf"; try { String htmlContent =
	 * new String(Files.readAllBytes(Paths.get(filePath)), StandardCharsets.UTF_8);
	 * System.out.println(htmlContent); Document htmlDoc = Jsoup.parse(htmlContent);
	 * 
	 * // PDF 문서 생성 PDDocument pdfDoc = new PDDocument(); PDPage page = new
	 * PDPage(); pdfDoc.addPage(page);
	 * 
	 * // 페이지에 콘텐츠 스트림 추가 PDPageContentStream contentStream = new
	 * PDPageContentStream(pdfDoc, page); PDType0Font font =
	 * PDType0Font.load(pdfDoc, new
	 * FileInputStream("C:\\filestore\\document\\font\\malgun.ttf"));
	 * contentStream.setFont(font, 12); contentStream.beginText();
	 * contentStream.setLeading(14.5f); contentStream.newLineAtOffset(25, 700);
	 * 
	 * // HTML 내용을 PDF로 쓰기 Elements paragraphs = htmlDoc.select("td"); for (Element
	 * paragraph : paragraphs) { contentStream.showText(paragraph.text());
	 * contentStream.newLine(); }
	 * 
	 * contentStream.endText(); contentStream.close();
	 * 
	 * // PDF 저장 pdfDoc.save(new File(pdfPath)); pdfDoc.close();
	 * 
	 * // PDFDomTree 사용하여 PDF 내용 HTML로 변환 및 출력 pdfDoc = PDDocument.load(new
	 * File(pdfPath)); PDFDomTree parser = new PDFDomTree(); ByteArrayOutputStream
	 * baos = new ByteArrayOutputStream(); Writer output = new PrintWriter(new
	 * OutputStreamWriter(baos, StandardCharsets.UTF_8)); parser.writeText(pdfDoc,
	 * output); output.close(); pdfDoc.close();
	 * 
	 * System.out.println("PDF 변환이 완료되었습니다."); } catch (IOException e) {
	 * e.printStackTrace(); } }
	 */

	/*
	 * @Test
	 * 
	 * @DisplayName("서버 로컬에서 html 파일을 불러오고 pdf 변환한 후 클라이언트에게 pdf 를 전달") void
	 * htmlToPdf() { com.itextpdf.text.FontFactory.registerDirectories(); String
	 * filePath =
	 * "C:\\filestore\\document\\c6da0943-f2b3-41cd-ab43-5401a12ecac3.html"; try {
	 * String htmlContent = new String(Files.readAllBytes(Paths.get(filePath)),
	 * "UTF-8"); } catch (IOException e3) { // TODO Auto-generated catch block
	 * e3.printStackTrace(); }
	 * 
	 * Document document = new Document(PageSize.A4, 50, 50, 50, 50); // 용지 및 여백 설정
	 * 
	 * File pdfFile = new File("C:\\filestore\\document\\pdf\\123.pdf");
	 * FileOutputStream fos = null; try { fos = new FileOutputStream(pdfFile); }
	 * catch (FileNotFoundException e2) { // TODO Auto-generated catch block
	 * e2.printStackTrace(); }
	 * 
	 * // PdfWriter 생성 //PdfWriter writer = PdfWriter.getInstance(document, new
	 * FileOutputStream("d:/test.pdf")); // 바로 다운로드. PdfWriter writer = null; try {
	 * writer = PdfWriter.getInstance(document, fos); } catch (DocumentException e1)
	 * { // TODO Auto-generated catch block e1.printStackTrace(); } try {
	 * writer.setInitialLeading(12.5f); } catch (DocumentException e1) { // TODO
	 * Auto-generated catch block e1.printStackTrace(); }
	 * 
	 * // 파일 다운로드 설정
	 * 
	 * response.setContentType("application/pdf"); String fileName =
	 * URLEncoder.encode("한글파일명", "UTF-8"); // 파일명이 한글일 땐 인코딩 필요
	 * response.setHeader("Content-Transper-Encoding", "binary");
	 * response.setHeader("Content-Disposition", "inline; filename=" + fileName +
	 * ".pdf");
	 * 
	 * 
	 * // Document 오픈 document.open(); XMLWorkerHelper helper =
	 * XMLWorkerHelper.getInstance();
	 * 
	 * // CSS CSSResolver cssResolver = new StyleAttrCSSResolver(); CssFile cssFile
	 * = null; try { cssFile = helper.getCSS(new
	 * FileInputStream("C:\\filestore\\document\\css\\pdf.css")); } catch
	 * (FileNotFoundException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); } cssResolver.addCss(cssFile);
	 * 
	 * // HTML, 폰트 설정 XMLWorkerFontProvider fontProvider = new
	 * XMLWorkerFontProvider(XMLWorkerFontProvider.DONTLOOKFORFONTS);
	 * fontProvider.register("C:\\filestore\\document\\font\\NanumGothic.ttf",
	 * "NanumGothic"); // MalgunGothic은 alias, CssAppliers cssAppliers = new
	 * CssAppliersImpl(fontProvider);
	 * 
	 * HtmlPipelineContext htmlContext = new HtmlPipelineContext(cssAppliers);
	 * htmlContext.setTagFactory(Tags.getHtmlTagProcessorFactory());
	 * 
	 * // Pipelines PdfWriterPipeline pdf = new PdfWriterPipeline(document, writer);
	 * HtmlPipeline html = new HtmlPipeline(htmlContext, pdf); CssResolverPipeline
	 * css = new CssResolverPipeline(cssResolver, html);
	 * 
	 * XMLWorker worker = new XMLWorker(css, true); XMLParser xmlParser = new
	 * XMLParser(worker, Charset.forName("UTF-8"));
	 * 
	 * // 폰트 설정에서 별칭으로 줬던 "MalgunGothic"을 html 안에 폰트로 지정한다.
	 * 
	 * String htmlStr = "<html><head><body style='font-family: MalgunGothic;'>" +
	 * "<p>PDF 안에 들어갈 내용입니다.</p>" + "<h3>한글, English, 漢字.</h3>" +
	 * "</body></head></html>";
	 * 
	 * 
	 * // [jeong] 서버 로컬에서 파일의 내용을 불러와 htmlStr 에 저장한다 String documentFilePath =
	 * "C:\\filestore\\document\\c6da0943-f2b3-41cd-ab43-5401a12ecac3.html"; String
	 * htmlContent = null; try { htmlContent = new
	 * String(Files.readAllBytes(Paths.get(documentFilePath)), "UTF-8");
	 * System.out.println(htmlContent); } catch (IOException e3) { // TODO
	 * Auto-generated catch block e3.printStackTrace(); }
	 * 
	 * 
	 * 
	 * StringReader strReader = new StringReader(htmlContent); try {
	 * xmlParser.parse(strReader); } catch (IOException e) { // TODO Auto-generated
	 * catch block e.printStackTrace(); } strReader.close(); document.close();
	 * writer.close(); }
	 */

}
