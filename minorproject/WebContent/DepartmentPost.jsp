<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        
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
             <li><a href="index.jsp">HOME</a></li>
             <li><a class="active" href="Departments.jsp">DEPARTMENTS</a></li>
             <li><a href="PrivatePosts.jsp">PRIVATE DISCUSSION</a></li>
             <li><a href="AdminLogin.jsp">ADMIN</a></li>
             
             <li><a href="">ABOUT US</a></li>
             <li><a href="ClientLogin.jsp">LOGIN</a></li>
             <li><a href="ClientSignup.jsp">SIGN UP</a></li>
         </ul>
        </div>
      </div>
     
     <br><br><br><br><br>
  
 <%@ page import="com.mk.model.Client"%>
 <%@ page import="com.mk.model.Post"%>
 <%@ page import="com.mk.controller.PostController"%>
 <%@ page import="java.sql.ResultSet" %>
 
    <div class="container">
         
            <div id="container_demo" >
                 <div id="wrapper">
                  <h1>Latest Posts For <%=request.getParameter("department") %> Department</h1>
                   <p><br>
                    
                   <%
                    HttpSession ses=request.getSession();
                    Client A;
                 	try{
                 	ses.putValue("SCREATE","Discuss.jsp");
                 	A=(Client)ses.getValue("SCLIENT");	
                 	String ltime=(String)ses.getValue("SLTIME");
                    Post P=new Post();
                     ResultSet rs=PostController.DisplayPostByDepartment(request.getParameter("department"));
                   
				      if(rs.toString()=="null")
				      {out.println("No Post Available for "+request.getParameter("department")+" Department");}
					   int count=1;                 
                     while(rs.next())
                     {  
                         out.print("posted by <font size=''><b>"+rs.getString(10)+"</b></font>&nbsp&nbsp&nbsp<font size='2'>");
                         out.print(rs.getString(4)+"</font><br><br><b><font size='4'>");
                         out.print(rs.getString(3)+"</font></b>&nbsp&nbsp&nbsp");%>
                         <a href='CreatePostSession.jsp?postid=<% out.print(rs.getString(1));%>'>
                      <% out.print("VIEW</a><br><hr><br>");}%>
                   </p>
              

<% 
                                           
 }catch(Exception e){
                 	out.println("No Post Available for "+request.getParameter("department")+" Department");
                 	//response.sendRedirect("ClientLogin.jsp");	
                	}%>
     </div>
            </div>
       
    </div>              	
</body>
</html>