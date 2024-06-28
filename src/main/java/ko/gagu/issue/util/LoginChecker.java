package ko.gagu.issue.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import ko.gagu.issue.controller.DocumentController;

@Component
public class LoginChecker implements HandlerInterceptor {
	// [do] 로그인 인터셉터
	
	private static final Logger logger = LoggerFactory.getLogger(DocumentController.class);

	
	// 컨트롤러를 거치기 전에 인터셉터를 거친다.
	// 반환값이 false면 컨트롤러에 접근할 수 없다.
	// false 로 컨트롤러에 가지 못하게 한 다음, response 를 이용해서 다른 곳으로 보내는 것이 일반적이다.
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler)
			throws Exception {
		boolean pass = true;
		logger.info("=== PRE HANDLER ===");
		
		HttpSession session = req.getSession();
		
		if (session.getAttribute("emp_id") == null) {
			pass = false;
			resp.sendRedirect("/login.go");		// 외장 톰캣을 사용한다면, context 경로를 넣어줘야,,
		}
		
		return pass;
	}

	// 컨트롤러에 접근 한 후 뷰에 보내지기 전 들른다.
	// view 에 보내고 싶은 내용이 있다면 ModelAndView 에 넣어주면 된다.
	@Override
	public void postHandle(HttpServletRequest req, HttpServletResponse resp, Object handler,
			ModelAndView mav) throws Exception {
		logger.info("=== POST HANDLER ===");
		
		HttpSession session = req.getSession();
		String emp_id = (String) session.getAttribute("emp_id");
		logger.info("로그인 아이디 >> "+emp_id);
		
		// 필요없으면 빼도 됨.
		//mav.addObject("emp_id", emp_id);
	}
	
	
	

}
