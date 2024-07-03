package ko.gagu.issue.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import ko.gagu.issue.dao.ReservationDAO;
import ko.gagu.issue.dto.ReservationDTO;
import ko.gagu.issue.dto.RoomStatusDTO;

@Service
public class ReservationService {
	
	private final Logger logger = LoggerFactory.getLogger(ReservationService.class);
	
	private final ReservationDAO dao;
	
	private final Lock lock = new ReentrantLock();
	
	public ReservationService (ReservationDAO dao) {
		this.dao = dao;
	}	

	public ModelAndView getReservationDetail(int idxEmployee, int idxReservation) {
		// 1. 해당 예약자 인지 확인 후 아니라면 페이지 튕기게 하기
		return null;
	}

	public ModelAndView getReservationList(int idxEmployee) {
		ModelAndView mav = new ModelAndView("/common/reservationList");
		List<ReservationDTO> reservationList = dao.getReservationList(idxEmployee);
		mav.addObject("reservationList", reservationList);
		return mav;
	}

	public ModelAndView getReservationFilterList(int idxEmployee, String filter) {
		// TODO Auto-generated method stub
		return null;
	}

	public ModelAndView getMeetingRoom(int idxEmployee, String selectDate, int[] selectedTime) {
		ModelAndView mav = new ModelAndView("/common/reservationRoomSelect");
		List<RoomStatusDTO> temp = dao.getRsvRoomStatus(selectDate, selectedTime);
		/*
		 * List<Map<String, Object>> roomData = new ArrayList<Map<String, Object>>();
		 * for (var rsDTO: temp) { roomData.add(new
		 * ObjectMapper().writeValueAsString(temp)); }
		 */
		try {
			mav.addObject("roomData", new ObjectMapper().writeValueAsString(temp));
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mav;
	}

	public ModelAndView getAvailableSlots(int idxEmployee) {
		ModelAndView mav = new ModelAndView("/common/reservationDatetimeSelect");
		// 1. 현재 달에서 (2024-07) 예약 가능한 날짜를 조회
		// 1-1. 2024-07-01 에 모든 회의실이 예약이 차 있으면 불가능함으로 판단한다
		
		// 2. 
		
		return mav;
	}

	@Transactional(rollbackFor = Exception.class)
	public ModelAndView registerRsv(int selectedRoomNo, int idxEmployee,
			int selectedPeopleNumber, String selectedDate,
			int[] selectedTime) {
		ModelAndView mav = new ModelAndView("/common/reservationList");
		ReservationDTO rsvDTO = new ReservationDTO();
		rsvDTO.setReservist(idxEmployee);
		rsvDTO.setRsvPeople(selectedPeopleNumber);
		rsvDTO.setIdxMeetingRoom(selectedRoomNo);
		
		// 모든 쓰레드들은 다른 메서드가 사용중이라면 여기서 대기한다
		// 사용이 끝나면 큐 안에 들어있던 순서대로 호출되어 실행된다
		lock.lock();
		try {
			// 1. 예약 가능한지 확인
			// 1-1. 하나라도 곂치는 예약이 있는지 확인하기
			if (dao.isReservation(selectedRoomNo, selectedDate, selectedTime) != 0) {
				mav.setViewName("/common/reservationDatetimeSelect");
				mav.addObject("errorMsg", "이미 동일한 시간에 예약 내역이 있어 날짜 선택 페이지로 이동합니다.");
				return mav;
			}
			
			// 2. 예약을 등록함
			dao.registerRsv(rsvDTO);
			int idxReservation = rsvDTO.getIdxReservation();
			if (idxReservation == 0) {
				mav.setViewName("/common/reservationDatetimeSelect");
				mav.addObject("errorMsg", "서버에서 오류가 발생하여 날짜 선택 페이지로 이동합니다.");
				return mav;
			}
			
			// 3. 등록에 성공하면 시간도 넣어준다
			for (int time : selectedTime) {
				dao.insertRsvTime(idxReservation, time, selectedDate);
			}
		} finally {
			lock.unlock();
		}
		return mav;
	}

}
