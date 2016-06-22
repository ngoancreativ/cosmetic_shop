package dao;

import java.util.List;

import model.Contactinfor;


public interface ContactDao {
	public List<Contactinfor> getListContact();
	public void addContact(Contactinfor contactinfor);
	public Contactinfor getContact(int contactId);
	public void delete(Contactinfor contactinfor);
	public void update(Contactinfor contactinfor) ;
}
