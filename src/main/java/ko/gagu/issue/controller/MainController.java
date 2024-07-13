package ko.gagu.issue.controller;

//import static org.junit.jupiter.api.Assertions.assertEquals;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ko.gagu.issue.dto.EmployeeDTO;
import ko.gagu.issue.dto.PagingDTO;
import ko.gagu.issue.dto.product_tbDTO;
import ko.gagu.issue.service.MainService;

@Controller
public class MainController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	
	
	@Autowired MainService mainService;
	
	
	// [do] 로그인 세션 정보 저장 다시 하기!
	
	@GetMapping(value = "/")
	public String login() {
		// [do] 바코드 생성하기
		mainService.createBarcode();
				
		return "login/do-login";
	}
	
	// [do] 메인페이지, 대시보드
	@GetMapping(value="/main/dashboard.go")
	public ModelAndView dashboard(Model model, HttpSession session, RedirectAttributes rAttr) {
		logger.info("/main/dashboard.jsp 로 이동");
		
		// 로그인 인터셉터로 처리하기
		//session.setAttribute("emp_id", "admin");
		
		//birthDateTest();
		EmployeeDTO dto = (EmployeeDTO) session.getAttribute("loginInfo");
//		model.addAttribute("emp_name", dto.getEmp_name());
//		model.addAttribute("de_name", dto.getDe_name());
		
		
		return mainService.dashboard(session, rAttr);
	}
	
	
	
	// 조직도 사진 경로
	@GetMapping(value="/profile/{file_name}")
	public ResponseEntity<Resource> productView(@PathVariable String file_name) {
		logger.info("불러올 사진 파일 >>>>>>>>>>>>>>>>>>>>>>> "+file_name);
		return mainService.profileView(file_name);
	}
	
	
	
	
	// 대시보드 - 매출 현황 그래프
	@PostMapping(value = "/main/salesGraph.ajax")
	@ResponseBody	
	public Map<String, Object> salesGraph() {
		return mainService.salesGraph();			
	}
	
	
	
	// [do] 대시보드 - 오늘의 출근 히스토리
	@PostMapping(value="/gotoWorkTimeCheck.ajax")
	@ResponseBody
	public Map<String, String> gotoWorkTimeCheck(HttpSession session, String gotoWorkTime) {
		Map<String, String> map = new HashMap<String, String>();
		
		return mainService.gotoWorkTimeCheck(map, session, gotoWorkTime);
	}
	@PostMapping(value="/finishWorkTimeCheck.ajax")
	@ResponseBody
	public Map<String, String> finishWorkTimeCheck(HttpSession session, String finishWorkTime) {
		Map<String, String> map = new HashMap<String, String>();
		
		return mainService.finishWorkTimeCheck(map, session, finishWorkTime);
	}
	
	
	
	
	
	/*
	 * // [do] 멘토님 테스트 코드 void birthDateTest() { String year = "1990"; String month
	 * = "2"; String day = "8"; String before = year + "-" + String.format("%02d",
	 * Integer.parseInt(month)) + "-" + String.format("%02d",
	 * Integer.parseInt(day)); System.out.println(before);
	 * 
	 * int changedYear = Integer.parseInt(year); int changedMonth =
	 * Integer.parseInt(month); int changedDay = Integer.parseInt(day);
	 * 
	 * String after = LocalDate.of(changedYear, changedMonth, changedDay)
	 * .format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
	 * System.out.println(after);
	 * 
	 * // before 와 after 가 같다는 것을 검증 //assertEquals(before, after);
	 * logger.info(before+" == "+after); }
	 */
	
	
	
	// [do] 연차 히스토리
	@GetMapping(value="/common/annualList.go")
	public ModelAndView annualLeaveHistory(HttpSession session) {
		return mainService.annualLeaveHistory(session);
	}
	@PostMapping(value="/annualList.ajax")
	@ResponseBody
	public Map<String, Object> annualListAjax(HttpSession session){
		Map<String, Object> map = new HashMap<String, Object>();
		
		return mainService.annualHistoryAjax(session, map);
	}
	// 연차 리스트 페이징
	@PostMapping(value = "/common/listPaging.ajax")
	@ResponseBody	
	public Map<String, Object> listPaging(@RequestBody PagingDTO pagingDTO
			,HttpSession session) {
		logger.info("pagingDTO : {}", pagingDTO);
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		
		return mainService.paging(pagingDTO, idxEmployee);			
	}
	
	
	
	// [do] 알람
	@PostMapping(value="/alarmCnt.ajax")
	@ResponseBody
	public Map<String, Object> alarmCntAjax(HttpSession session){
		Map<String, Object> map = new HashMap<String, Object>();
		
		return mainService.alarmCntAjax(session, map);
	}
	@PostMapping(value="/alarmList.ajax")
	@ResponseBody
	public Map<String, Object> alarmListAjax(HttpSession session){
		Map<String, Object> map = new HashMap<String, Object>();
		
		return mainService.alarmListAjax(session, map);
	}
	// 알림 읽음 처리
	@PostMapping(value="/alarmRead.ajax")
	@ResponseBody
	public Map<String, Object> alarmRead(@RequestBody Map<String, Object> payload){
		Map<String, Object> map = new HashMap<String, Object>();
		
		String idx_employeeStr = (String) payload.get("idx_employee");
		int idx_employee = Integer.parseInt(idx_employeeStr);
		String idx_alarmStr = (String) payload.get("idx_alarm");
		int idx_alarm = Integer.parseInt(idx_alarmStr);
		
		return mainService.alarmRead(map, idx_alarm, idx_employee);
	}
	
	
	
	
	
	
	

	@RequestMapping(value = "/indexOri.go")
	public String indexOri() {
		logger.info("indexOri.jsp 로 이동");
		return "main/indexOri";
	}

	// 1단 경로
	/*
	@GetMapping(value = "/{path}.go")
	public String path(@PathVariable String path, Model model, HttpSession session) {
		logger.info(path + ".jsp 로 이동");
		
		if (session.getAttribute("emp_name")!= null) {
			String emp_name = (String) session.getAttribute("emp_name");
			String de_name = (String) session.getAttribute("de_name");
			
			model.addAttribute("emp_name", emp_name);
			model.addAttribute("de_name", de_name);
		}
		
		
		return path;
	}*/
	
	// 2단 경로
	/*
	@GetMapping(value = "/{path1}/{path2}.go")
	public String path2(@PathVariable String path1, @PathVariable String path2, Model model, HttpSession session) {
		logger.info(path1+"/"+path2+".jsp 로 이동");
		
		String page = path1+"/"+path2;
		
		if (session.getAttribute("emp_name")!= null) {
			String emp_name = (String) session.getAttribute("emp_name");
			String de_name = (String) session.getAttribute("de_name");
			
			model.addAttribute("emp_name", emp_name);
			model.addAttribute("de_name", de_name);
		}
		
		return page;
	}
	*/

}
