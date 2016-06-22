package dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import util.HibernateUtil;
import model.Order;
import model.OrderDetail;



public class OrderDetailDAOImpl implements OrderDetailDAO {
	private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

	@Override
	public void addOrderDetailDAO(OrderDetail orderDetail1) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.save(orderDetail1);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Order> getOrder(int orderid) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		List<Order> list = null;
		try {
			tx = session.beginTransaction();
			list = session.createQuery(
					"FROM orderdetail where orderid='" + orderid + "'")
					.list();
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<OrderDetail> getListOrderDetail() {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		List<OrderDetail> list = null;
		try {
			tx = session.beginTransaction();
			list = session.createQuery("FROM orderdetail")
					.list();
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

}
