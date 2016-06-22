package model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ORDER", catalog="cosmetic")
public class Order {
	@Id
	@Column(name = "orderid", unique = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderid = 0;	
	@Column(name = "address")
	private String address;
	@Column(name = "phone")
	private String phone;
	@Column(name = "total")
	private String total;
	@Column(name = "email")
	private String email;
	@Column(name = "date")
	private Date date;
	@Column(name = "Productname")
	private String Productname;
	@Column(name = "price")
	private Double price;	
	@Column(name = "totalMoney")
	private Double totalMoney;
	
	
	public Order() {
		
	}


	public Order(int orderid, String address, String phone, String total, String email, Date date, String productname,
			Double price, Double totalMoney) {
		super();
		this.orderid = orderid;
		this.address = address;
		this.phone = phone;
		this.total = total;
		this.email = email;
		this.date = date;
		Productname = productname;
		this.price = price;
		this.totalMoney = totalMoney;
	}


	public int getOrderid() {
		return orderid;
	}


	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getTotal() {
		return total;
	}


	public void setTotal(String total) {
		this.total = total;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}


	public String getProductname() {
		return Productname;
	}


	public void setProductname(String productname) {
		Productname = productname;
	}


	public Double getPrice() {
		return price;
	}


	public void setPrice(Double price) {
		this.price = price;
	}


	public Double getTotalMoney() {
		return totalMoney;
	}


	public void setTotalMoney(Double totalMoney) {
		this.totalMoney = totalMoney;
	}

	
}
