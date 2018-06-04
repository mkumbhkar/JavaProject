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
              <li><a href="ClientHome.jsp">HOME</a></li>
              <li><a href="Departments.jsp">DEPARTMENTS</a></li>
              <li><a href="PrivatePosts.jsp">PRIVATE DISCUSSION</a></li>
             <li><a href="ClientProfile.jsp">YOUR PROFILE</a></li>
             <li><a href="PostAdd.jsp">ADD POST</a></li>
             <li><a href="ViewPost.jsp">YOUR POST</a></li>
              
               <li><a href="">ABOUT US</a></li>
             <li><a href="ClientLogout.jsp">LOG OUT</a></li>
         </ul>
        </div>
      </div>
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
                             
                 	     try{
                 	          
                 	    	 HttpSession ses=request.getSession();
                             Post P;
                            
                       	     P=(Post)ses.getValue("SPOST");	
                       	    ses.putValue("SCOMMENT", "ClientDiscuss.jsp");
                         	
                            %>
                            <b>USER:</b><%out.print(P.getUsername()); %></br>
                            <b>POST DATE:&nbsp;</b><%out.print(P.getDate()); %></br>
                            <b>PRIVACY:&nbsp;</b><%out.print(P.getPrivacy()); %></br>
                             <br>
                            <b>TITLE:</b>&nbsp;<%out.print(P.getPosttitle()); %><br><br>
                            <b>CONTENT:</b><br><br><%out.print(P.getContent()); %><br><br><br>
                      
                            <b>COMMENTS :</b><br>
                             <%
                          
                 	          ResultSet rs=CommentController.DisplayCommentByPostID(P.getPostid());
                                               
                              while(rs.next())
                              {
                               
                                out.print("<b>"+rs.getString(6)+"</b>&nbsp;&nbsp;&nbsp;");
                                out.print(rs.getString(4)+"<br>");
                                } 
                            
                             try{ %>
                             <form action="CommentSubmit">
                             <textarea rows="3" cols="60" id="comment" name="comment" required="required" placeholder="Comment Here..."></textarea><br>
                           <!--  <input type="hidden" name="postid" value="<%out.print(P.getPostid()); %>"> -->
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
 	System.out.println(e);
 	//response.sendRedirect("ClientLogin.jsp");	
	}
 }catch(Exception e){
                 	out.println(e);
                 		
                	}%>