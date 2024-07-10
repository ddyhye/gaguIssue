package ko.gagu.issue.config;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import ko.gagu.issue.util.LoginChecker;

@Configuration
public class interCeptorConfig implements WebMvcConfigurer{
	
	@Autowired LoginChecker checker;

	// [do] 인터셉터
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		// 1. 인터셉터에 등록할 로직 추가
		// 2. 인터셉터가 가로챌 url 패턴 등록 
		// 3. 인터셉터가 예외로 둘 url 패턴 등록
		
		List<String> excludeList = new ArrayList<String>();
		excludeList.add("/");
		excludeList.add("/main*");
		excludeList.add("/board*");
		excludeList.add("/document*");
		excludeList.add("/employee*");
		excludeList.add("/hrdepartment*");
		excludeList.add("/logisticsDepartment");
		excludeList.add("/mail*");
		excludeList.add("/message*");
		excludeList.add("/reservation*");
		excludeList.add("/supportDepartment*");
		excludeList.add("/resources/**");
		excludeList.add("/login*");
		excludeList.add("/findNumber.go");
		excludeList.add("/findPW.go");
		excludeList.add("/joinForm.go");
		
		registry.addInterceptor(checker)
					.addPathPatterns("/**")
					.excludePathPatterns(excludeList); // 로그인 페이지와 리소스 경로는 제외;    
	}
	
	
}
