package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import dao.UserDaoImpl;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;


public class LoginServlet extends HttpServlet {
	private UserDaoImpl dao;

	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {

		res.setContentType("text/html");
		PrintWriter out = res.getWriter();

		UserDaoImpl udao = new UserDaoImpl();

		String email = req.getParameter("Username");
		String password = req.getParameter("Password");

		User u = udao.getUserByEmail(email);

		if (u.getEmail().equals(email) && u.getPassword().equals(password)) {

			if (u.isManager() == true) {

				res.sendRedirect("ManagerTicketListServlet");

			} else {

				res.sendRedirect("EmployeeTicketListServlet?Username=" + u.getEmail());

			}
		} else {

			res.sendRedirect("index.html");

		}

	}
	

	
}
