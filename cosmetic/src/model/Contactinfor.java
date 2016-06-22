package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CONTACTINFOR", catalog="cosmetic")
public class Contactinfor {
	@Id
	@Column(name = "contactId", unique = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int contactId;
	@Column(name = "name")
	private String name;
	@Column(name = "email")
	private String email;
	@Column(name = "phone")
	private int phone;
	@Column(name = "message")
	private String message;
		
	public Contactinfor() {
		
	}

	public Contactinfor(int contactId, String name, String email, int phone, String message) {
		this.contactId = contactId;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.message = message;
	}

	public int getContactId() {
		return contactId;
	}

	public void setContactId(int contactId) {
		this.contactId = contactId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	
	
}
