package dao;

import model.Order;


import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import util.HibernateUtil;

public class OrderDAOImpl implements OrderDAO {
	private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

	@Override
	public void addOrder(Order order) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.save(order);
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
	public List<Order> getListOrder() {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		List<Order> list = null;
		try {
			tx = session.beginTransaction();
			list = session.createQuery("FROM Order ORDER BY orderid DESC")
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
	
	@Override
	public Order getOrder(int orderid) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		Order order = null;
		try {
			tx = session.beginTransaction();
			order = (Order) session.createQuery(
					"FROM Order where orderid='" + orderid + "'").uniqueResult();
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return order;
	}
	

}
