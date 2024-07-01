package ko.gagu.issue.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class ReservationService {
	
	Logger logger = LoggerFactory.getLogger(getClass());

	public ModelAndView getReservationDetail(int idxEmployee, int idxReservation) {
		// 1. 해당 예약자 인지 확인 후 아니라면 페이지 튕기게 하기
		return null;
	}

	public ModelAndView getReservationList(int idxEmployee) {
		// TODO Auto-generated method stub
		return null;
	}

	public ModelAndView getReservationFilterList(int idxEmployee, String filter) {
		// TODO Auto-generated method stub
		return null;
	}

	public ModelAndView getMeetingRoom(int idxEmployee, String selectDate, String selectedTime) {
		// TODO Auto-generated method stub
		return null;
	}

	public ModelAndView getAvailableSlots(int idxEmployee) {
		ModelAndView mav = new ModelAndView("/common/reservationDatetimeSelect");
		// 1. 현재 달에서 (2024-07) 예약 가능한 날짜를 조회
		// 1-1. 2024-07-01 에 모든 회의실이 예약이 차 있으면 불가능함으로 판단한다
		
		// 2. 
		
		return mav;
	}

}
