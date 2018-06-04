<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>Insert title here</title>
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
             <li><a class="active" href="">HOME</a></li>
            
             <li><a href="AllUsers.jsp">USERS</a></li>
             <li><a href="AddAdmin.jsp">ADD ADMIN</a></li>
              <li><a href="Comments.jsp">COMMENTS</a></li>
             <li><a href="AdminLogout.jsp">LOG OUT</a></li>
         </ul>
    </div>
 </div>

 <br><br><br><br><br>
  
 <%@ page import="com.mk.model.Admin"%>
 <%@ page import="com.mk.model.Post"%>
 <%@ page import="com.mk.controller.PostController"%>
 <%@ page import="java.sql.ResultSet" %>
 
    <div class="container">
         <section>
            <div id="container_demo" >
                 <div id="wrapper">
                  <h1>Latest Posts</h1>
                   <p><br>
                    
                   <%
                    HttpSession ses=request.getSession();
                   Admin A;
                	try{ses.putValue("SCREATE","AdminDiscuss.jsp");
                	A=(Admin)ses.getValue("SADMIN");
                 	String ltime=(String)ses.getValue("SLTIME");
                    Post P=new Post();
                     ResultSet rs=PostController.DisplayAll();
                   
				
					   int count=1;                 
                     while(rs.next())
                     {
                        out.print(count+"&nbsp&nbsp&nbsp");
                        out.print(rs.getString(4)+"&nbsp&nbsp&nbsp");
                        out.print(rs.getString(3)+"&nbsp&nbsp&nbsp");
                        %>
                        <a href=CreatePostSession.jsp?postid=<%out.print(rs.getString(1)); %>>VIEW POST</a><br><br>
                    
                    <%count++;} %>
                   
                   </p>
                 </div>
            </div>
         </section>
    </div>
    
</body>
</html>
<% 
                                           
 }catch(Exception e){
                 	out.println(e);
                 	response.sendRedirect("AdminLogin.jsp");	
                	}%>