package ko.gagu.issue.dto;

import org.apache.ibatis.type.Alias;

@Alias(value="message")
public class MessageDTO {
	private int idx_messageroom;
	private int sender;
	private int	is_sender_exit;
	private int receiver;
	private int is_receiver_exit;
	
	public int getIdx_messageroom() {
		return idx_messageroom;
	}
	public void setIdx_messageroom(int idx_messageroom) {
		this.idx_messageroom = idx_messageroom;
	}
	public int getSender() {
		return sender;
	}
	public void setSender(int sender) {
		this.sender = sender;
	}
	public int getIs_sender_exit() {
		return is_sender_exit;
	}
	public void setIs_sender_exit(int is_sender_exit) {
		this.is_sender_exit = is_sender_exit;
	}
	public int getReceiver() {
		return receiver;
	}
	public void setReceiver(int receiver) {
		this.receiver = receiver;
	}
	public int getIs_receiver_exit() {
		return is_receiver_exit;
	}
	public void setIs_receiver_exit(int is_receiver_exit) {
		this.is_receiver_exit = is_receiver_exit;
	}
	
	

}
