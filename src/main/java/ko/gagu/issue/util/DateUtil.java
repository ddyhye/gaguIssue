package ko.gagu.issue.util;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.springframework.stereotype.Component;

@Component
public class DateUtil {
    // [jeong] 현재 날짜를 년년년년-월월-일일 로 반환하는 메서드
    public String getCurrentDate() {
    	return LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
    }
    
    // [jeong] 현재 년도를 반환하는 메서드
    public String getCurrentYear() {
    	return LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy"));
    }

    // [jeong] 현재 월을 반환하는 메서드
    public String getCurrentMonth() {
    	return LocalDate.now().format(DateTimeFormatter.ofPattern("MM"));
    }

    // [jeong] 현재 일을 반환하는 메서드
    public String getCurrentDay() {
        return LocalDate.now().format(DateTimeFormatter.ofPattern("dd"));
    }
}
