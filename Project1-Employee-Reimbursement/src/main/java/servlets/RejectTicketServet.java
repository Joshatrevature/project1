package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import dao.ReimbursementDAO;
import dao.ReimbursementDaoFactory;
import model.Reimbursement;

@WebServlet("/reject-ticket")
public class RejectTicketServet extends HttpServlet{

protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		
		ReimbursementDAO dao = ReimbursementDaoFactory.getDao();
		
		Reimbursement r;
		
		//get ticket id
		int id = Integer.parseInt(req.getParameter("id"));
		
		r = dao.getReimbursementsById(id);
		
		System.out.println(r.getReimbursementStatus());
		
		r.setReimbursementStatus("rejected");
		
		System.out.println(r.getReimbursementStatus());
		
		dao.updateReimbursement(r);
		
		res.sendRedirect("ManagerTicketListServlet");
		
	}
	
}
