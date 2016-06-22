package dao;

import java.util.List;



import model.Order;
import model.OrderDetail;

public interface OrderDetailDAO {
	
	public void addOrderDetailDAO(OrderDetail orderDetail);
	public List<Order> getOrder(int orderid) ;
	public List<OrderDetail> getListOrderDetail() ;
}
