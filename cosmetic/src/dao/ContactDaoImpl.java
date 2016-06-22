package dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;
import model.Contactinfor;

import util.HibernateUtil;

public class ContactDaoImpl implements ContactDao {
	
	private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

	@SuppressWarnings("unchecked")
	@Override
	public List<Contactinfor> getListContact() {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		List<Contactinfor> list = null;
		try {
			tx = session.beginTransaction();
			list = session.createQuery("FROM Contactinfor ORDER BY contactId DESC")
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
	public void addContact(Contactinfor contactinfor) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		try {
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.save(contactinfor);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		
	}

	@Override
	public Contactinfor getContact(int contactId) {
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		Contactinfor contactinfor = null;
		try {
			tx = session.beginTransaction();
			contactinfor = (Contactinfor) session.createQuery("FROM contact where contactId='" + contactId + "'")
					.uniqueResult();
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return contactinfor;
	}

	@Override
	public void delete(Contactinfor contactinfor) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.delete(contactinfor);
		transaction.commit();
		session.close();
		
	}
	@Override
	public void update(Contactinfor contactinfor) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.update(contactinfor);
		transaction.commit();
		session.close();
	}

}
