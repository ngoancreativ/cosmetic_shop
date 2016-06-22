package dao;

import java.util.List;

import model.Order;



public interface OrderDAO {
	
	public List<Order> getListOrder();
	public void addOrder(Order order);
	Order getOrder(int orderid);
	

}
