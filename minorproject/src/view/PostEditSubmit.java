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

import com.mk.controller.PostController;
import com.mk.model.Client;
import com.mk.model.Post;

/**
 * Servlet implementation class PostEditSubmit
 */
@WebServlet("/PostEditSubmit")
public class PostEditSubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostEditSubmit() {
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
         Client C;
      	  Date date=new Date();
          C=(Client)ses.getValue("SCLIENT");
		  out.println("<html>");
		  
		  Post A=(Post)ses.getValue("SPOST");
		  
	      A.setPosttitle(request.getParameter("posttitle"));
	      
	      A.setPrivacy(request.getParameter("postprivacy"));
	      A.setDepartment(request.getParameter("department"));
	      A.setContent(request.getParameter("postcontent"));
	    
	     ses.putValue("SPOST",A);
	      boolean st=PostController.EditPost(A);
		  if(st)
		  {		  
			  out.println("<b>Record Submitted</b><br><br><a href=DisplayPost.jsp>CLICK TO CONTINUE</a>");
			  
		  }
		  else
		  {out.println("<b>Fail to Submit Record</b>");}
		
		out.println("</html>");
		out.flush();

	}

}
