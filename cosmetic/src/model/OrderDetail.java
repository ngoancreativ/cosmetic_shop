package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ORDERDETAIL" ,catalog = "cosmetic")
public class OrderDetail {
	@Id
	@Column(name = "orderDetail_id", unique = true, nullable = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderDetail_id = 0;
		
	@Column(name = "orderid")
	private int orderid;
	@Column(name = "product_id")
	private int product_id;
	@Column(name = "quantity")
	private int quantity;
	@Column(name = "price")
	private Double price;
	@Column(name = "name")
	private String name;
	
	
	public OrderDetail() {
		
	}
	
	public int getOrderDetail_id() {
		return orderDetail_id;
	}

	public void setOrderDetail_id(int orderDetail_id) {
		this.orderDetail_id = orderDetail_id;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public OrderDetail(int orderDetail_id, int orderid, int product_id, int quantity, Double price, String name) {
		
		this.orderDetail_id = orderDetail_id;
		this.orderid = orderid;
		this.product_id = product_id;
		this.quantity = quantity;
		this.price = price;
		this.name = name;
	}
	
}
