package dao;


import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


import util.HibernateUtil;

import model.Product;

public class ProductDAOImpl implements ProductDAO {

	SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getListProduct() {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		List<Product> list = null;
		try {
			tx = session.beginTransaction();
			list = session.createQuery("FROM Product ORDER BY product_id DESC")
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
	public List<Product> getListProductByCategory(int category_id) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		List<Product> list = null;
		try {
			tx = session.beginTransaction();
			list = session.createQuery(
					"FROM Product Where category_id='" + category_id
							+ "' ORDER BY product_id DESC").list();
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
	public Product getProduct(int product_id) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		Product p = null;
		try {
			tx = session.beginTransaction();
			p = (Product) session.createQuery("FROM Product where product_id='" + product_id + "'")
					.uniqueResult();
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return p;
	}

	@Override
	public void addNew(Product product) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.save(product);
		transaction.commit();
		session.close();
	}

	@Override
	public void delete(Product product) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.delete(product);
		transaction.commit();
		session.close();
	}

	@Override
	public void update(Product product) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.update(product);
		transaction.commit();
		session.close();
	}

	
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> searchProductByName(String productName) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("FROM Product WHERE name like :productName");
		query.setParameter("productName", "%" + productName + "%");
		List<Product> listProduct = query.list();
		transaction.commit();
		session.close();
		return listProduct;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getListProductSlide() {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		List<Product> list = null;
		try {
			tx = session.beginTransaction();
			Query query=session.createQuery("FROM Product ORDER BY product_id DESC");
			query.setFirstResult(0);
			query.setMaxResults(9);
			list = query.list();
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
