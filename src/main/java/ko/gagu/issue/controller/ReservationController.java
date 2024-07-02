package ko.gagu.issue.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
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
	
	@GetMapping(value="/reservation/calendar.go")
	public ModelAndView calendarGo(HttpSession session) {
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return service.getAvailableSlots(idxEmployee);
	}
	
	@GetMapping(value="/reservation/room.go")
	public ModelAndView meetingRoomGo(HttpSession session
			,@RequestParam("selectedDate") String selectedDate
			,@RequestParam("selectedTime") int[] selectedTime) {
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return service.getMeetingRoom(idxEmployee, selectedDate, selectedTime);
	}
	
	@GetMapping(value="/reservation/list.go")
	public ModelAndView reservationListGo(HttpSession session) {
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return service.getReservationList(idxEmployee);
	}
	
	@GetMapping(value="/reservation/{idxReservation}/detail.go")
	public ModelAndView detailGo(HttpSession session, @PathVariable int idxReservation) {
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return service.getReservationDetail(idxEmployee, idxReservation);
	}	
	
	@GetMapping(value="/reservation/list.do")
	@ResponseBody
	public ModelAndView reservationListDo(HttpSession session
			,@RequestParam("filter") String filter) {
		int idxEmployee = (int) session.getAttribute("idxEmployee");
		return service.getReservationFilterList(idxEmployee, filter);
	}
	
	@PostMapping(value="/reservation/submit.do")
	@ResponseBody
	public Map<String, Object> reservationDo(HttpSession session) {
		Map<String, Object> response = new HashMap<String, Object>();
		
		return response;
	}
	
}
