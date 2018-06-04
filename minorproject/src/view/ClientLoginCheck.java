package view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import com.mk.controller.ClientController;
import com.mk.model.Client;
import com.mk.model.Post;

/**
 * Servlet implementation class ClientLoginCheck
 */
@WebServlet("/ClientLoginCheck")
public class ClientLoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClientLoginCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		Client C=ClientController.CheckLogin(request.getParameter("useremail"),request.getParameter("password"));
		
		if(C!=null)
		{
			HttpSession ses=request.getSession();
			  try{
			      ses.putValue("SCLIENT", C);
			      ses.putValue("SLTIME", new java.util.Date().toString());
                 
			      response.sendRedirect((String)ses.getValue("SCLIENTLOGINCHECK"));
               
			  }catch(Exception e)
              {System.out.println(e+" ClientLoginCheck");
			  
              }
			}
			else
			{  out.println("<b><i><font color=red>Invalid UID/PWD</font><br><a href='ClientLogin.jsp'>Sign in Again</a></i></b>");
		    
			}
	}

}
