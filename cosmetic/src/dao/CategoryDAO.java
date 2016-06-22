package dao;

import java.util.List;

import model.Category;


public interface CategoryDAO {

	public void insertCategory(Category c);

	public List<Category> getCategoryByParent();

	public List<Category> getCategoryByChildren(int parent);
	
	public List<Category> getListCategory();
	
	public Category getCategory(int category_id) ;

	void delete(Category category);

	void update(Category category);
}
