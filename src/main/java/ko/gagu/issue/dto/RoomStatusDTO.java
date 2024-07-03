package ko.gagu.issue.dto;

import org.apache.ibatis.type.Alias;

@Alias("roomStatus")
public class RoomStatusDTO {
	private int idxMeetingroom;
	private String rsvDate;
    private int isReservation;
    
    private int mrPeople;
    private int reservedCurrentPeople;
    
    
	public int getIdxMeetingroom() {
		return idxMeetingroom;
	}
	public void setIdxMeetingroom(int idxMeetingroom) {
		this.idxMeetingroom = idxMeetingroom;
	}
	public String getRsvDate() {
		return rsvDate;
	}
	public void setRsvDate(String rsvDate) {
		this.rsvDate = rsvDate;
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
	public int getMrPeople() {
		return mrPeople;
	}
	public void setMrPeople(int mrPeople) {
		this.mrPeople = mrPeople;
	}
	
	
    
    
}
