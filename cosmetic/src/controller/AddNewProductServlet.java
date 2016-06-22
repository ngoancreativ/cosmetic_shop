package controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import dao.ProductDAOImpl;
import model.Product;;

/**
 * Servlet implementation class AddNewProductServlet
 */
@WebServlet("/AddNewProductServlet")
public class AddNewProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
	
	private void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Product product = new Product();
		
//		if (!file.isEmpty()) {
//            try {
//            	String path = request.getServletContext().getRealPath("/") + "image/";
//                FileUtils.forceMkdir(new File(path));
//                File upload = new File (path + file.getOriginalFilename());
//                file.transferTo(upload);
//                //byte[] bytes = file.getBytes();
//                String imagePath = "image/" + file.getOriginalFilename();
//                
//                product.setImage(imagePath);
//                //BufferedOutputStream buffStream = 
//                        //new BufferedOutputStream(new FileOutputStream(new File(imagePath)));
//                //buffStream.write(bytes);
//                
//               // buffStream.close();
//                product.setName(request.getParameter("ProductName"));
//    			product.setCategory_id(Integer.parseInt(request.getParameter("categoryid")));		
//    			product.setPrice(Double.parseDouble(request.getParameter("ProductPrice")));
//    			//product.setImage(request.getParameter("ProductImage"));
//    			product.setDescription(request.getParameter("description"));
//    			product.setProductDetail(request.getParameter("ProductDetail"));
//    			new ProductDAOImpl().addNew(product);
//    			System.out.println("ddddddddddddddddddd");
//    			response.sendRedirect("product_admin.jsp");	
//                
//            } catch (Exception e) {
//                System.out.println(e);
//            }
//        } else {
//           System.out.println("loi");
//        }
		try {
			product.setName(request.getParameter("ProductName"));
			product.setCategory_id(Integer.parseInt(request.getParameter("categoryid")));		
			product.setPrice(Double.parseDouble(request.getParameter("ProductPrice")));
			product.setImage(request.getParameter("ProductImage"));
			product.setDescription(request.getParameter("description"));
			product.setProductDetail(request.getParameter("ProductDetail"));
			new ProductDAOImpl().addNew(product);
			response.sendRedirect("product_admin.jsp");			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
