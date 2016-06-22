package dao;

import java.util.List;

import model.User;

public interface UserDAO {

	public void insertUser(User u);

	public User getUser(int user_id);

	public boolean checkLogin(String username, String password, int role);

	public boolean checkUsername(String username);
	
	
	public List<User> getListUser();

	public void update(User user) ;
	
	public void addNew(User user);

	public void delete(User user);

}
