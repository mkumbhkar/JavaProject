package view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mk.controller.CommentController;
import com.mk.model.Admin;

/**
 * Servlet implementation class AdminCommentDelete
 */
@WebServlet("/AdminCommentDelete")
public class AdminCommentDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminCommentDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
         PrintWriter out=response.getWriter();
         HttpSession ses=request.getSession();
         
		try{
		Admin	A=(Admin)ses.getValue("SADMIN");
		boolean rs=CommentController.DeleteCommentByID(request.getParameter("commentid"));
		if(rs)
		{System.out.println("Record Deleted...");
		response.sendRedirect("AdminDiscuss.jsp");}
	
		}catch(Exception e)
		{response.sendRedirect("AdminLogin.jsp");}
		}

}
