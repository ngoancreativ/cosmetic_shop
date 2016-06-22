package dao;

import java.util.List;


import model.Product;

public interface ProductDAO {

	public List<Product> getListProduct();

	public List<Product> getListProductByCategory(int category_id);

	public Product getProduct(int product_id);


	
	public void addNew(Product product);
	
	public void update(Product product) ;
	
	public void delete(Product product);
	
	public List<Product> searchProductByName(String productName);
	
	public List<Product> getListProductSlide();
}
