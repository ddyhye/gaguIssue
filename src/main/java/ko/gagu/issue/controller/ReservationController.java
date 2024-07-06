package ko.gagu.issue.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ko.gagu.issue.service.ReservationService;

@Controller
public class ReservationController {
	
	private final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	private final ReservationService service;
	
	public ReservationController(ReservationService service) {
		this.service = service;
	}
	
	/* [jeong] 예약 날짜 및 시간 선택 페이지로 이동 */
	@GetMapping(value="/reservation/calendar.go")
	public ModelAndView calendarGo(HttpSession session) {
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return service.getAvailableSlots(idxEmployee);
	}
	
	/* [jeong] 예약 내역 페이지로 이동 */ 
	@GetMapping(value="/reservation/list.go")
	public ModelAndView reservationListGo(HttpSession session) {
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return service.getReservationList(idxEmployee);
	}
	
	/* [jeong] 예약 가능한 회의실들을 선택하는 페이지로 이동 */
	@PostMapping(value="/reservation/room.go")
	public ModelAndView meetingRoomGo(HttpSession session
			,@RequestParam("selectedDate") String selectedDate
			,@RequestParam("selectedTime") int[] selectedTime) {
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		session.setAttribute("selectedDate", selectedDate);
		session.setAttribute("selectedTime", selectedTime);
		return service.getMeetingRoom(idxEmployee, selectedDate, selectedTime);
	}
	
	/* [jeong] 예약 시간과 회의실 번호를 입력 받아 예약 등록 처리 */
	@PostMapping(value="/reservation/register.do")
	public ModelAndView reservationRegisterDo(HttpSession session
			,@RequestParam("selectedRoomNo") int selectedRoomNo
			,@RequestParam("selectedPeopleNumber") int selectedPeopleNumber) {
		String selectedDate = (String) session.getAttribute("selectedDate");
		int[] selectedTime = (int[]) session.getAttribute("selectedTime");
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		session.removeAttribute("selectedDate");
		session.removeAttribute("selectedTime");
		return service.registerRsv(selectedRoomNo, idxEmployee, selectedPeopleNumber, selectedDate, selectedTime);
	}
	
	/* [jeong] 취소할 예약 번호를 입력받고 취소처리 */
	@PostMapping(value="/reservation/cancel.do")
	@ResponseBody
	public Map<String,Object> reservationCancelDo(HttpSession session
			,@RequestParam("idxReservation") int idxReservation) {
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return service.cancelRsv(idxEmployee, idxReservation);
	}
	
	/* [jeong] 페이징처리된 예약 내역 데이터를 응답 */
	@PostMapping(value="/reservation/paging.do")
	@ResponseBody
	public Map<String,Object> reservationPagingDo(HttpSession session
			,@RequestParam("page") int page) {
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return service.getPagingRsvList(idxEmployee, page);
	}
	
}
