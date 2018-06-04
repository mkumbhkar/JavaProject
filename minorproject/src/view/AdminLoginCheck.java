package view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mk.controller.AdminController;
import com.mk.controller.ClientController;
import com.mk.model.Admin;
import com.mk.model.Client;

/**
 * Servlet implementation class AdminLoginCheck
 */
@WebServlet("/AdminLoginCheck")
public class AdminLoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		Admin A=AdminController.checkPassword(request.getParameter("adminid"),request.getParameter("pwd"));
		
		if(A!=null)
		{
			HttpSession ses=request.getSession();
			ses.putValue("SADMIN", A);
			ses.putValue("SLTIME", new java.util.Date().toString());
            
			response.sendRedirect("AdminHome.jsp");
			}
			else
			{  out.println("<b><i><font color=red>Invalid UID/PWD</font><br><a href='AdminLogin.jsp'>Sign in Again</a></i></b>");
		    
			}
	}

}
