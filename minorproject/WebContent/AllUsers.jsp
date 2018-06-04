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
             <li><a href="AdminHome.jsp">HOME</a></li>
         
             <li><a class="active" href="">USERS</a></li>
             <li><a href="AddAdmin.jsp">ADD ADMIN</a></li>
              <li><a href="Comments.jsp">COMMENTS</a></li>
             <li><a href="AdminLogout.jsp">LOG OUT</a></li>
         </ul>
    </div>
 </div>

 <br><br><br><br><br>
  
 <%@ page import="com.mk.model.Admin"%>
 <%@ page import="com.mk.model.Post"%>
 <%@ page import="com.mk.controller.ClientController"%>
 <%@ page import="java.sql.ResultSet"%>
 
  <%
HttpSession ses=request.getSession();
Admin A;
	try{
	A=(Admin)ses.getValue("SADMIN");	
	String ltime=(String)ses.getValue("SLTIME");

%>
<br><br>
        <div class="container">
         
            
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                    <h><b>List Of All Users</b></h><br><br><br>
                    <%ResultSet rs=ClientController.DisplayAll(); 
                    if(rs.next())
         		   {   
         		      out.println("<table border=1 cellspacing=10>");
         		      
         		      out.println("<tr><th>Sno</th><th>USER NAME</th><th>CONTACT</th><th>INSTITUTE</th><th>ADDRESS</th><th>UPDATE</th></tr>");
         		      int sn=1;
         		      do
         		      {
         		     out.println("<tr><td>"+sn+"</td><td>USER ID:"+rs.getString(1)+"<br>"+rs.getString(3)+"<br>"+rs.getString(2)+"<br>GENDER:"+rs.getString(7)+"</td><td>"+rs.getString(4)+"<br>"+rs.getString(10)+"</td><td>"+rs.getString(13)+"<br>Enr.NO:"+rs.getString(6)+"</td><td>"+rs.getString(9)+"</td><td><a href=ClientDelete?clientid="+rs.getString(1)+">Delete</a></td></tr>"); 	  
         		    	sn++;  
         		      }while(rs.next());
         			   out.print("</table>");
         		   } else
         			   {
         				 out.println("Record Not Found");  
         			   }
                    %>
                     
                        
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
                	}
%>