package ko.gagu.issue.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

@Alias(value="message")
public class MessageDTO {
	private int idx_messageroom;
	private int sender;
	private int	is_sender_exit;
	private int receiver;
	private int is_receiver_exit;
	
	private int msg_count;
	private int no_read;
	private String file_name;
	private String name;
	private String other_name;
	private Timestamp reg_date;
	private String msg_content;
	private int other_emp;
	private Timestamp send_datetime;
	private int idx_message;
	private int is_receiver_read;
	private int idx_emp;
	private int sender_del;
	private int reciver_del;
	private int emp_id;
	private String new_picname;
	private String origin_name;
	
	private String de_name;
	
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
	public int getMsg_count() {
		return msg_count;
	}
	public void setMsg_count(int msg_count) {
		this.msg_count = msg_count;
	}
	public int getNo_read() {
		return no_read;
	}
	public void setNo_read(int no_read) {
		this.no_read = no_read;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public int getOther_emp() {
		return other_emp;
	}
	public void setOther_emp(int other_emp) {
		this.other_emp = other_emp;
	}
	public Timestamp getSend_datetime() {
		return send_datetime;
	}
	public void setSend_datetime(Timestamp send_datetime) {
		this.send_datetime = send_datetime;
	}
	public int getIdx_message() {
		return idx_message;
	}
	public void setIdx_message(int idx_message) {
		this.idx_message = idx_message;
	}
	public int getIs_receiver_read() {
		return is_receiver_read;
	}
	public void setIs_receiver_read(int is_receiver_read) {
		this.is_receiver_read = is_receiver_read;
	}
	public String getOther_name() {
		return other_name;
	}
	public void setOther_name(String other_name) {
		this.other_name = other_name;
	}
	public String getDe_name() {
		return de_name;
	}
	public void setDe_name(String de_name) {
		this.de_name = de_name;
	}
	public int getIdx_emp() {
		return idx_emp;
	}
	public void setIdx_emp(int idx_emp) {
		this.idx_emp = idx_emp;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public int getSender_del() {
		return sender_del;
	}
	public void setSender_del(int sender_del) {
		this.sender_del = sender_del;
	}
	public int getReciver_del() {
		return reciver_del;
	}
	public void setReciver_del(int reciver_del) {
		this.reciver_del = reciver_del;
	}
	public String getMsg_content() {
		return msg_content;
	}
	public void setMsg_content(String msg_content) {
		this.msg_content = msg_content;
	}
	public String getNew_picname() {
		return new_picname;
	}
	public void setNew_picname(String new_picname) {
		this.new_picname = new_picname;
	}
	public String getOrigin_name() {
		return origin_name;
	}
	public void setOrigin_name(String origin_name) {
		this.origin_name = origin_name;
	}
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	
	
	

}
