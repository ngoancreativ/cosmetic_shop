package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.ContactDaoImpl;

import model.Contactinfor;


/**
 * Servlet implementation class UpdateServletContact
 */
@WebServlet("/UpdateServletContact")
public class UpdateServletContact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServletContact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Contactinfor contactinfor = new ContactDaoImpl().getContact(Integer.parseInt(request
				.getParameter("contactId")));			
		request.setAttribute("contact", contactinfor);
		request.getRequestDispatcher("updateContact.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Contactinfor contactinfor = new Contactinfor();
		try {
			contactinfor.setContactId(Integer.parseInt(request.getParameter("contactId")));
			contactinfor.setName(request.getParameter("name"));
			contactinfor.setEmail(request.getParameter("email"));
			contactinfor.setPhone(Integer.parseInt(request.getParameter("phone")));
			contactinfor.setMessage(request.getParameter("message"));
			new ContactDaoImpl().update(contactinfor);
			response.sendRedirect("contactAdmin.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	

}
