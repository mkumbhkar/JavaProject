<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <%@ page import="com.mk.model.Admin"%>
 <%@ page import="com.mk.model.Post"%>
 <%@ page import="com.mk.controller.PostController"%>
 <%@ page import="com.mk.controller.CommentController"%>
 <%@ page import="java.sql.ResultSet"%>  

<%
HttpSession ses=request.getSession();
try{ 
	  Admin  A=(Admin)ses.getValue("SADMIN");	
   String ltime=(String)ses.getValue("SLTIME");
       
   Post P=(Post)ses.getValue("SPOST");	
   
   boolean rs=PostController.DeletePostByPostID(P.getPostid());
   if(rs)
   {
	response.sendRedirect("AdminHome.jsp") ;  
   }
   }catch(Exception e){}

%>
</body>
</html>