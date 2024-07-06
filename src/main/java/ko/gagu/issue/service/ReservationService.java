package ko.gagu.issue.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
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
	
	/* [jeong] 예약 내역과 총 페이지 수를 전달 */
	public ModelAndView getReservationList(int idxEmployee) {
		ModelAndView mav = new ModelAndView("/common/reservationList");
		// 사용 완료 상태로 변경
		List<Integer> rsvFinshList = dao.getFinshRsv();
		for (int idxReservation : rsvFinshList) {			
			dao.updateReservationList(idxReservation);
		}
		List<ReservationDTO> reservationList = dao.getReservationList(idxEmployee, 1);
		int totalPages = dao.getRsvListTotalPages(idxEmployee);

		if (reservationList.isEmpty() || reservationList == null) {
			mav.addObject("reservationList", "none");
		} else {
			mav.addObject("reservationList", reservationList);
			mav.addObject("totalPages", totalPages);
		}
		return mav;
	}

	/* [jeong] 선택한 날짜와 시간에 회의실이 예약 가능한지 여부와 회의실의 정보를 가져옴 */
	public ModelAndView getMeetingRoom(int idxEmployee, String selectDate, int[] selectedTime) {
		ModelAndView mav = new ModelAndView("/common/reservationRoomSelect");
		List<RoomStatusDTO> temp = dao.getRsvRoomStatus(selectDate, selectedTime);
		try {
			mav.addObject("roomData", new ObjectMapper().writeValueAsString(temp));
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return mav;
	}

	/* [jeong] 날짜 및 시간 선택 페이지로 이동 */
	public ModelAndView getAvailableSlots(int idxEmployee) {
		ModelAndView mav = new ModelAndView("/common/reservationDatetimeSelect");
		return mav;
	}

	/* [jeong] 연속된 시간은 하나의 예약으로 묶고 예약 등록 처리 */
	@Transactional(rollbackFor = Exception.class)
	public ModelAndView registerRsv(int selectedRoomNo, int idxEmployee,
			int selectedPeopleNumber, String selectedDate,
			int[] selectedTime) {
		ModelAndView mav = new ModelAndView("redirect:/reservation/list.go");
		
		// 시간 순서대로 연속된 시간을 묶어야하므로 정렬을 해준다
		Arrays.sort(selectedTime);
		// 묶인 예약 시간들은 [{startTime:9, endTime:9}, ..] 이런식으로 rsvTime 에 저장된다
		List<Map<String, Integer>> rsvTime = new ArrayList<>();
		
		// 예약들을 묶어준다
		if (selectedTime.length > 0) {
			int startTime = selectedTime[0];
			int endTime = startTime;
			
	        for (int i = 1; i < selectedTime.length; i++) {
	        	if (selectedTime[i] == endTime + 1) {
	        		endTime = selectedTime[i];
	        	} else {
	        		Map<String, Integer> map = new HashMap<>();
	        		map.put("startTime", startTime);
	        		map.put("endTime", endTime);
	        		rsvTime.add(map);
	        		
	        		startTime = selectedTime[i];
	    			endTime = startTime;
	        	}
	        }
	        
    		Map<String, Integer> map = new HashMap<>();
    		map.put("startTime", startTime);
    		map.put("endTime", endTime);
    		rsvTime.add(map);
		} else {
			mav.setViewName("/common/reservationDatetimeSelect");
			mav.addObject("errorMsg", "시간을 선택하지 않아 날짜 및 시간 선택 페이지로 이동합니다.");
			return mav;			
		}
		
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
			for (var time : rsvTime) {
				ReservationDTO rsvDTO = new ReservationDTO();
				rsvDTO.setReservist(idxEmployee);
				rsvDTO.setRsvPeople(selectedPeopleNumber);
				rsvDTO.setIdxMeetingRoom(selectedRoomNo);
				rsvDTO.setStartDatetime(String.format("%s %02d:00:00", selectedDate, time.get("startTime")));
				rsvDTO.setEndDatetime(String.format("%s %02d:00:00", selectedDate, time.get("endTime") + 1));
				dao.registerRsv(rsvDTO);
				if(rsvDTO.getIdxReservation() == 0) {
					mav.setViewName("/common/reservationDatetimeSelect");
					mav.addObject("errorMsg", "예약 등록 중에 오류가 발생하여 날짜 및 시간 페이지로 이동합니다.");
					return mav;
				}
				int idxReservation = rsvDTO.getIdxReservation();
				for (int t = time.get("startTime"); t <= time.get("endTime"); t++) {
					dao.insertRsvTime(idxReservation, t, selectedDate);
				}
				
			}
		} finally {
			lock.unlock();
		}
		return mav;
	}
	
	/* [jeong] 선택한 예약을 취소한다 */
	public Map<String,Object> cancelRsv(int idxEmployee, int idxReservation) {
		var response = new HashMap<String,Object>();
		
		int row = dao.cancelReservation(idxReservation, idxEmployee);
		response.put("success", row == 1 ? true : false);
		
		return response;
	}

	/* [jeong] 페이징 처리된 예약 내역과 총 페이지 수를 반환 */
	public Map<String, Object> getPagingRsvList(int idxEmployee, int page) {
		var response = new HashMap<String,Object>();
		List<Integer> rsvFinshList = dao.getFinshRsv();
		for (int idxReservation : rsvFinshList) {			
			dao.updateReservationList(idxReservation);
		}
		
		var reservationList = dao.getReservationList(idxEmployee, page);
		int totalPages = dao.getRsvListTotalPages(idxEmployee);
		page = page > totalPages ? totalPages == 0 ? 1 : totalPages : page;
		
		response.put("reservationList", reservationList);
		response.put("totalPages", totalPages);
		response.put("page", page);
		return response;
	}

}
