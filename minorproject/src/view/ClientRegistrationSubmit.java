package view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mk.controller.ClientController;
import com.mk.model.Client;

/**
 * Servlet implementation class ClientRegistrationSubmit
 */
@WebServlet("/ClientRegistrationSubmit")
public class ClientRegistrationSubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClientRegistrationSubmit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 PrintWriter out=response.getWriter();
		 
		  Client A=new Client();
		  A.setName(request.getParameter("namesignup"));
	      A.setUsername(request.getParameter("unamesignup"));
	      A.setAddress(request.getParameter("addresssignup"));
	      A.setInstitute(request.getParameter("institutesignup"));
	      A.setEnrollmentno(request.getParameter("enrollmentsignup"));
	      A.setGender(request.getParameter("gendersignup"));
	      A.setMobileno(request.getParameter("mobilesignup"));
	      A.setDob(request.getParameter("dobsignup"));
	      A.setEmailid(request.getParameter("emailsignup"));
	      A.setPassword(request.getParameter("passwordsignup"));
	      A.setAddress(request.getParameter("addresssignup"));      
	      A.setInterest(request.getParameter("interestsignup"));
	      A.setOccupation(request.getParameter("occupationsignup")); 
	      A.setBranch(request.getParameter("branchsignup")); 
		     
	      boolean st=ClientController.AddNewRecord(A);
		  if(st)
		  {		  
			 response.sendRedirect("ClientLogin.jsp");
			  
		  }
		  else
		  {out.println("<b>Fail to Submit Record</b>");}
		
		out.flush();
		}
	}


