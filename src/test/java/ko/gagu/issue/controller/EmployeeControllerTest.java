package ko.gagu.issue.controller;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import static org.junit.jupiter.api.Assertions.assertEquals;

class EmployeeControllerTest {

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
}
