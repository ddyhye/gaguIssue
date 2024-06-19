package ko.gagu.issue.main.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ko.gagu.issue.main.service.MainService;

@Controller
public class MainController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	
	
	@Autowired MainService mainService;
	
	
	// [do] 로그인 세션 정보 저장 다시 하기!
	
	// [do] 메인페이지, 대시보드
	@RequestMapping(value = "/")
	public ModelAndView dashboard(Model model, HttpSession session, RedirectAttributes rAttr) {
		logger.info("/main/dashboard.jsp 로 이동");
		
		session.setAttribute("emp_id", "admin");
		session.setAttribute("emp_name", "관리자");
		session.setAttribute("de_name", "관리자");
		
		
		/*
		 * if (session.getAttribute("emp_name")!= null) { String emp_name = (String)
		 * session.getAttribute("emp_name"); String de_name = (String)
		 * session.getAttribute("de_name");
		 * 
		 * model.addAttribute("emp_name", emp_name); model.addAttribute("de_name",
		 * de_name); }
		 */
		
		return mainService.dashboard(session, rAttr);
	}

	@RequestMapping(value = "/indexOri.go")
	public String indexOri() {
		logger.info("indexOri.jsp 로 이동");
		return "main/indexOri";
	}

	// 1단 경로
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
	}
	
	// 2단 경로
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

}
