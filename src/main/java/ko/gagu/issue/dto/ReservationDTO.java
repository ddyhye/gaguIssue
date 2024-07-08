package ko.gagu.issue.dto;

import java.time.LocalDateTime;

import org.apache.ibatis.type.Alias;

@Alias("reservation")
public class ReservationDTO {
    private int idxReservation;
    private int idxMeetingRoom;
    private String roomName;
    private int reservist;
    private String resEmpName;
    private int rsvPeople; // 예약 인원 수
    private String rsvStatus;
    
    // 예약 가능 인원수(쿼리에서 작성함)
    private int reservedCurrentPeople;
    
    private int rsvTime;
    private String rsvDate;
    
    private String startDatetime;
    private String endDatetime;

	// 예약 시간을 오른쪽 형식에 맞춰서 줌 09:00 ~ 10:00 (총 1시간)
    private String reservationTime;
    private String reservationDate;
    
    // 예약 가능한지 여부
    private int isReservation;

    public String getStartDatetime() {
		return startDatetime;
	}

	public void setStartDatetime(String startDatetime) {
		this.startDatetime = startDatetime;
	}

	public String getEndDatetime() {
		return endDatetime;
	}

	public void setEndDatetime(String endDatetime) {
		this.endDatetime = endDatetime;
	}
    
	public int getIdxReservation() {
		return idxReservation;
	}

	public void setIdxReservation(int idxReservation) {
		this.idxReservation = idxReservation;
	}

	public int getIdxMeetingRoom() {
		return idxMeetingRoom;
	}

	public void setIdxMeetingRoom(int idxMeetingRoom) {
		this.idxMeetingRoom = idxMeetingRoom;
	}

	public int getReservist() {
		return reservist;
	}

	public void setReservist(int reservist) {
		this.reservist = reservist;
	}

	public int getRsvPeople() {
		return rsvPeople;
	}

	public void setRsvPeople(int rsvPeople) {
		this.rsvPeople = rsvPeople;
	}

	public String getRsvStatus() {
		return rsvStatus;
	}

	public void setRsvStatus(String rsvStatus) {
		this.rsvStatus = rsvStatus;
	}

	public int getIsReservation() {
		return isReservation;
	}

	public void setIsReservation(int isReservation) {
		this.isReservation = isReservation;
	}

	public int getReservedCurrentPeople() {
		return reservedCurrentPeople;
	}

	public void setReservedCurrentPeople(int reservedCurrentPeople) {
		this.reservedCurrentPeople = reservedCurrentPeople;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getResEmpName() {
		return resEmpName;
	}

	public void setResEmpName(String resEmpName) {
		this.resEmpName = resEmpName;
	}

	public String getRsvDate() {
		return rsvDate;
	}

	public void setRsvDate(String rsvDate) {
		this.rsvDate = rsvDate;
	}

	public int getRsvTime() {
		return rsvTime;
	}

	public void setRsvTime(int rsvTime) {
		this.rsvTime = rsvTime;
	}

	public String getReservationTime() {
		return reservationTime;
	}

	public void setReservationTime(String reservationTime) {
		this.reservationTime = reservationTime;
	}

	public String getReservationDate() {
		return reservationDate;
	}

	public void setReservationDate(String reservationDate) {
		this.reservationDate = reservationDate;
	}

	
	
	
	
	// [do] 
	private LocalDateTime start_datetime;
	private String mr_name;
	private int idx_reservation;
	private String startDate;
	private String startTime;
	
	
	
	public String getStartDate() {
		return startDate;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getMr_name() {
		return mr_name;
	}
	public int getIdx_reservation() {
		return idx_reservation;
	}
	public void setMr_name(String mr_name) {
		this.mr_name = mr_name;
	}
	public void setIdx_reservation(int idx_reservation) {
		this.idx_reservation = idx_reservation;
	}
	public LocalDateTime getStart_datetime() {
		return start_datetime;
	}
	public void setStart_datetime(LocalDateTime start_datetime) {
		this.start_datetime = start_datetime;
	}
}
