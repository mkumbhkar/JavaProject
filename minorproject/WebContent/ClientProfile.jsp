<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
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
             <li><a href="ClientHome.jsp">HOME</a></li>
             <li><a href="Departments.jsp">DEPARTMENTS</a></li>
             <li><a href="PrivatePosts.jsp">PRIVATE DISCUSSION</a></li>
             <li><a class="active" href="">YOUR PROFILE</a></li>
             <li><a href="PostAdd.jsp">ADD POST</a></li>
             <li><a href="ViewPost.jsp">YOUR POST</a></li>
              
               <li><a href="">ABOUT US</a></li>
             <li><a href="ClientLogout.jsp">LOG OUT</a></li>
         </ul>
    </div>
 </div><br><br><br><br>
 <%@ page import="com.mk.model.Client"%>
 
    <div class="container">
         <section>
            <div id="container_demo" >
                 <div id="wrapper">
                   <%
                    HttpSession ses=request.getSession();
                    Client A;
                 	try{
                 	A=(Client)ses.getValue("SCLIENT");	
                 	String ltime=(String)ses.getValue("SLTIME");
                
                   
                   %>
                   
                   <h1>Your Profile</h1>
                   <p><br><table cellspacing=10>
                    
                     <tr><td>  Name :</td><td><%out.print(A.getName()); %></td></tr>
                    <tr><td>   User Name :</td><td><%out.print(A.getUsername());%></td></tr>
                     <tr><td>  Email ID :</td><td><%out.print(A.getEmailid()); %></td></tr>
                     <tr><td>  Enrollment No. :</td><td><%out.print(A.getEnrollmentno()); %></td></tr>
                    <tr><td>   Gender :</td><td><%out.print(A.getGender()) ;%></td></tr>
                     <tr><td>  Date of Birth :</td><td><%out.print(A.getDob()) ;%></td></tr>
                     <tr><td>  Address :</td><td><%out.print(A.getAddress()); %></td></tr>
                     <tr><td>  Mobile No. :</td><td><%out.print(A.getMobileno()); %></td></tr>
                     <tr><td>  Occupation :</td><td><%out.print(A.getOccupation()) ;%></td></tr>
                    <tr><td>   Institute :</td><td><%out.print(A.getInstitute()); %></td></tr>
                    <tr><td>   Interest :</td><td><%out.print(A.getInterest()) ;%></td></tr>
                  </table> </p>
                 </div>
            </div>
         </section>
    </div>
    
</body>
</html>
<% 
 }catch(Exception e){
                 	out.println(e);
                 	response.sendRedirect("ClientLogin.jsp");	
                	}%>