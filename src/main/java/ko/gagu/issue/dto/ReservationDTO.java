package ko.gagu.issue.dto;

import org.apache.ibatis.type.Alias;

@Alias("reservation")
public class ReservationDTO {
    private int idxReservation;
    private int idxMeetingRoom;
    private int reservist;
    private int rsvPeople; // 예약 인원 수
    private String rsvStatus;
    
    // 예약 가능 인원수(쿼리에서 작성함)
    private int reservedCurrentPeople;
    
    // 예약 가능한지 여부
    private int isReservation;

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
    
    
    
}
