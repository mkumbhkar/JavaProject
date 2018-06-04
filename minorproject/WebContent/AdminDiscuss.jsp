<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>Login and Registration</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="asset/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="asset/css/style.css" />
		<link rel="stylesheet" type="text/css" href="asset/css/animate-custom.css" />
    
</head>
<body>
         <div id="navbar">
          <div id="nav">
           <ul id="ul">
             <li><a href="AdminHome.jsp">HOME</a></li>
            
             <li><a href="AllUsers.jsp">USERS</a></li>
             <li><a href="AddAdmin.jsp">ADD ADMIN</a></li>
              <li><a href="Comments.jsp">COMMENTS</a></li>
             <li><a href="AdminLogout.jsp">LOG OUT</a></li>
         </ul>
        </div>
      </div>
           
 <%@ page import="com.mk.model.Admin"%>
 <%@ page import="com.mk.model.Post"%>
 <%@ page import="com.mk.controller.PostController"%>
 <%@ page import="com.mk.controller.CommentController"%>
 <%@ page import="java.sql.ResultSet"%>  
     <br><br><br><br><br>
    <div class="container">
         
            
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                         <%
                           
                 	        HttpSession ses=request.getSession();
                            Admin A;
                            try{ 
                      	    A=(Admin)ses.getValue("SADMIN");	
                           String ltime=(String)ses.getValue("SLTIME");
                 	          
                           Post P=(Post)ses.getValue("SPOST");	
                           
                           ses.putValue("SCOMMENT", "AdminDiscuss.jsp");
                            %>
                            <b>USER:</b><%out.print(P.getUsername()); %></br>
                            <b>POST DATE:&nbsp;</b><%out.print(P.getDate()); %></br>
                            <b>PRIVACY:&nbsp;</b><%out.print(P.getPrivacy()); %></br>
                             <br>
                            <b>TITLE:</b>&nbsp;<%out.print(P.getPosttitle()); %><br><br>
                            <b>CONTENT:</b>
                            <a href="PostDelete.jsp">DELETE POST</a>
                            <br><br><%out.print(P.getContent()); %><br><br><br>
                      
                            <b>COMMENTS :</b><br>
                               <%
                          
                 	          ResultSet rs=CommentController.DisplayCommentByPostID(P.getPostid());
                                               
                              while(rs.next())
                              {
                               %>
                                <b><%out.print(rs.getString(6));%></b>&nbsp;&nbsp;&nbsp;
                                 <%out.print(rs.getString(4));%>&nbsp;&nbsp;<a href='AdminCommentDelete?commentid="<%out.print(rs.getString(1));%>"'><i>DELETE</i></a><br>
                              <%  } 
                            
                             try{ %>
                             <form action="CommentSubmit">
                             <textarea rows="3" cols="60" id="comment" name="comment" required="required"  placeholder="Comment Here..."></textarea><br>
                             <input type="hidden" name="postid" value=<%out.print(request.getParameter("postid")); %>>
                            <p class="login button"> 
                             <input type="submit" class="commentbutton" value="COMMENT"> 
                             </p>               
                       </form>
                   
                       </div>
                   </div>
                </div>
           </section>
      </div>
                       
</body>
</html>
<% }catch(Exception e){
 	out.println(e);
 	response.sendRedirect("ClientLogin.jsp");	
	}
                            }catch(Exception e){
                             	out.println(e);
                             		
                            	}
%>