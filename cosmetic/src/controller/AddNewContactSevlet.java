package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.MultipartStream.ItemInputStream;

import dao.ContactDaoImpl;
import model.Contactinfor;


/**
 * Servlet implementation class AddNewContactSevlet
 */
@WebServlet("/AddNewContactSevlet")
public class AddNewContactSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ItemInputStream itemInputStream = null;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewContactSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	
	
	private void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		Contactinfor contactinfor = new Contactinfor();
		try {
			contactinfor.setName(request.getParameter("Name"));
			contactinfor.setEmail(request.getParameter("Email"));
			contactinfor.setMessage(request.getParameter("Message"));
			contactinfor.setPhone(Integer.parseInt(request.getParameter("Phone")));
			new ContactDaoImpl().addContact(contactinfor);
			response.sendRedirect("contact.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
