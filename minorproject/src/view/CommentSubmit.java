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

import com.mk.controller.CommentController;
import com.mk.controller.PostController;
import com.mk.model.Client;
import com.mk.model.Comment;
import com.mk.model.Post;

/**
 * Servlet implementation class CommentSubmit
 */
@WebServlet("/CommentSubmit")
public class CommentSubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentSubmit() {
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
		  Client C;
      	  Date date=new Date();
          C=(Client)ses.getValue("SCLIENT");
		  out.println("<html>");
		  Comment A=new Comment();
		  Post P=(Post)ses.getValue("SPOST");
		  A.setUserid(C.getUserid());
	      A.setPostid(P.getPostid());
	      A.setDate(date.toString());
	      A.setUsername(C.getUsername());
	      A.setContent(request.getParameter("comment"));
	     
	     
	      boolean st=CommentController.AddNewComment(A);
		  if(st)
		  {		  
			 // out.println("<b>Comment Submitted</b><br><br><a href=PostAdd.jsp>ADD NEW POST</a>");
			 //String s=(String)ses.getValue("SCOMMENT");
			  response.sendRedirect((String)ses.getValue("SCOMMENT"));
			 // response.sendRedirect("ClientDiscuss.jsp");
		  }
		  else
		  {out.println("<b>Fail to Post Comment</b><br><br><a href=Discuss.jsp>Try Again</a>");}
		
		
		out.flush();
		}catch(Exception e)
		  {System.out.println(e+" CommentSubmit");
		  
		  response.sendRedirect("DiscussLogin.jsp");
		  }
		out.println("</html>");
		}

}
