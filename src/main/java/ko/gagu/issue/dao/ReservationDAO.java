package ko.gagu.issue.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import ko.gagu.issue.dto.ReservationDTO;
import ko.gagu.issue.dto.RoomStatusDTO;

@Mapper
public interface ReservationDAO {

	void registerRsv(ReservationDTO rsvDTO);

	void insertRsvTime(int idxReservation, int time, String selectedDate);

	int isReservation(int selectedRoomNo, String selectedDate, int[] selectedTime);

	List<RoomStatusDTO> getRsvRoomStatus(String selectDate, int[] selectedTime);

	List<ReservationDTO> getReservationList(int idxEmployee, @Param("page") int page);

	void updateReservationList(int idxReservation);

	int cancelReservation(int idxReservation, int idxEmployee);

	int getRsvListTotalPages(int idxEmployee);

	List<Integer> getFinshRsv();

}
