package dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import util.HibernateUtil;
import model.Category;




public class CategoryDAOImpl implements CategoryDAO {

	private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

	@Override
	public void insertCategory(Category c) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.save(c);
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
	public List<Category> getCategoryByParent() {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		List<Category> list = null;
		try {
			tx = session.beginTransaction();
			list = session.createQuery("FROM Category where parent=0").list();
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
	public List<Category> getCategoryByChildren(int parent) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		List<Category> list = null;
		try {
			tx = session.beginTransaction();
			list = session.createQuery(
					"FROM Category where parent='" + parent + "'").list();
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
	public List<Category> getListCategory() {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		List<Category> list = null;
		try {
			tx = session.beginTransaction();
			list = session.createQuery("FROM Category ORDER BY category_id DESC")
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
	public Category getCategory(int category_id) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		Category category = null;
		try {
			tx = session.beginTransaction();
			category = (Category) session.createQuery(
					"FROM Category where category_id='" + category_id + "'").uniqueResult();
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return category;
	}
	@Override
	public void delete(Category category) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.delete(category);
		transaction.commit();
		session.close();
		
	}
	@Override
	public void update(Category category) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.update(category);
		transaction.commit();
		session.close();
	}

}
