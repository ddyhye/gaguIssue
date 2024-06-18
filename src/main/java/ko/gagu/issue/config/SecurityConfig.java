package ko.gagu.issue.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

	// 암호화 부분 빈 등록
		@Bean
		public PasswordEncoder getPasswordEncoder() {
			return new BCryptPasswordEncoder();
		}
		
		// 암호화 외의 다른 기능들은 비활성화(disable)
		@Bean
		public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
			http.httpBasic().disable().csrf().disable();
			// 정원, 0618  해당 페이지와 동일한 orgin에 해당하는 frame만 표시할 수 있도로 허용
			http.headers().frameOptions().sameOrigin();
			return http.build();
		}

}
