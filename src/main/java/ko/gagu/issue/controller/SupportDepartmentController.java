package ko.gagu.issue.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ko.gagu.issue.service.SupportDepartmentService;

@Controller
public class SupportDepartmentController {
	
	private final Logger logger = LoggerFactory.getLogger(SupportDepartmentController.class);
	
	private final SupportDepartmentService supportService;
	
	public SupportDepartmentController(SupportDepartmentService service) {
		this.supportService = service;
	}
	/* 거래처 관리로 이동 */
	@GetMapping(value= "/businessPartnerList.go")
	public String businessPartnerList(Model model) {
		logger.info("!!!!!!!!!!!!거래처 관리로 이동!!!!!!!!!!!");
		return "supportDepartment/businessPartnerList";
	}
	
	/* 거래처 리스트 아작스 요청 */
	@GetMapping(value="/clientList.ajax")
	@ResponseBody
	public Map<String, Object> clientList(@RequestParam(value="clientSearch", required = false, defaultValue = "") String clientSearch, String page, int cnt){
		logger.info("!!!!!!!!!거래처 리스트 아작스 요청!!!!!!!!!!");
		logger.info("clientSearch :" + clientSearch);
		
		int currPage = Integer.parseInt(page);
		Map<String, Object> map = supportService.clientList(currPage, cnt, clientSearch);
		return map;
	}
	
	/* 거래처 등록 */
	@PostMapping(value="/clientForm")
	public ModelAndView clientReg(@RequestParam Map<String, String> param){
		return supportService.clientReg(param);
	}
	
	
	
	// 배열 형태로 들어올 경우 따로 명시를 해줘야 한다.
	@RequestMapping(value="/del.ajax", method=RequestMethod.POST)
	@ResponseBody // response 객체로 반환
	public Map<String, Object> del(@RequestParam(value="delList[]") List<String> delList) {
		logger.info("----------거래처 삭제 요청------------");
		logger.info("del List : {}",delList);

		int cnt = supportService.del(delList);
		logger.info("del count :"+cnt);
			
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cnt", cnt);
			
		return map; //json 과 가장 닮은 map으로 반환
	}
	
	
	
	@GetMapping(value="/getClient")
	@ResponseBody
	public Map<String, Object> getClient(@RequestParam("idx") int idx) {
		logger.info("----------거래처 수정 요청------------");
		logger.info("수정할 사업자 번호 : " + idx);
		Map<String, Object> map = supportService.getClient(idx);
		
		return map;
	}
	
	
	
	
	
	
	
	/* 창고 관리로 이동 */
	@GetMapping("/storageManage.go")
	public String storageManage() {
		return "supportDepartment/storageManage";
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
