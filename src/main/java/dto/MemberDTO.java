package dto;

import java.sql.Date;
import java.sql.Timestamp;

public class MemberDTO {
	public MemberDTO(String id, String pw, String email, Timestamp join_date, String information) {
		this.id = id;
		this.pw = pw;
		this.email = email;
		this.join_date = join_date;
		this.information = information;
	}
	
	public MemberDTO() {
		// TODO Auto-generated constructor stub
	}

	private String id;
	private String pw;
	private String email;
	private Timestamp join_date;	
	private String information;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Timestamp getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Timestamp join_date) {
		this.join_date = join_date;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
}
