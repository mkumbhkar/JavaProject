package view;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mk.controller.AdminController;
import com.mk.controller.PostController;
import com.mk.model.Admin;
import com.mk.model.Client;
import com.mk.model.Post;

/**
 * Servlet implementation class AdminSubmit
 */
@WebServlet("/AdminSubmit")
public class AdminSubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminSubmit() {
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
        
		  out.println("<html>");
		  Admin A=new Admin();
		 
	      A.setAdminname(request.getParameter("adminname"));
	     
	      A.setPassword(request.getParameter("adminpwd"));
	      A.setMobileno(request.getParameter("mobileno"));
	      A.setEmailid(request.getParameter("emailid"));
	    
	      boolean st=AdminController.AddNewAdmin(A);
		  if(st)
		  {		  
			  out.println("<b>Record Submitted</b><br><br><a href=AddAdmin.jsp>ADD NEW ADMIN</a>");
			  
		  }
		  else
		  {out.println("<b>Fail to Submit Record</b><br><br><a href=AddAdmin.jsp>Try Again</a>");}
		
		out.println("</html>");
		out.flush();
		
	}

}
