package ko.gagu.issue.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import ko.gagu.issue.controller.DocumentController;
import ko.gagu.issue.controller.WebSocketController;
import ko.gagu.issue.dto.EmployeeDTO;

@Component
public class LoginChecker implements HandlerInterceptor {
	// [do] 로그인 인터셉터
	
	private static final Logger logger = LoggerFactory.getLogger(DocumentController.class);

	
	@Autowired WebSocketController webSocketController;
	
	// 컨트롤러를 거치기 전에 인터셉터를 거친다.
	// 반환값이 false면 컨트롤러에 접근할 수 없다.
	// false 로 컨트롤러에 가지 못하게 한 다음, response 를 이용해서 다른 곳으로 보내는 것이 일반적이다.
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler)
			throws Exception {
		boolean pass = true;
		logger.info("=== PRE HANDLER ===");
		
		HttpSession session = req.getSession();
		
		if (session.getAttribute("emp_id") == null || session.getAttribute("loginInfo") == null) {
			logger.info("로그인 해야 합니다.....");
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
	    EmployeeDTO dto = (EmployeeDTO) session.getAttribute("loginInfo");

	    if (dto != null) {
	        String emp_name = dto.getEmp_name();
	        String de_name = dto.getDe_name();
	        String title_name = dto.getTitle_name();

	        // ModelAndView 객체가 null이 아닌 경우에만 addObject 호출
	        if (mav != null) {
	            if (emp_name != null && de_name != null && title_name != null) {
	                mav.addObject("emp_name", emp_name);
	                mav.addObject("de_name", de_name);
	                mav.addObject("title_name", title_name);
	            } else {
	                logger.error("EmployeeDTO의 필드 중 하나가 null입니다.");
	            }
	        } else {
	            //logger.error("ModelAndView 객체가 null입니다.");
	        }
	        
	        // WebSocket 세션 등록
            String sessionId = req.getSession().getId();
            webSocketController.registerUserSession(dto.getIdx_employee(), sessionId);
            logger.info("웹소켓 세션 등록됨: " + sessionId);
	    } 
	}
	
	
	

}
