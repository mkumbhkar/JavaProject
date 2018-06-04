<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="com.mk.model.Client"%>
<%@ page import="com.mk.model.Post"%>
<%@ page import="com.mk.controller.PostController"%>
<%
HttpSession ses=request.getSession();

try{
		 Post P=PostController.DisplayPostByPostID(request.getParameter("postid"));
			
			ses.putValue("SPOST", P);
			ses.putValue("SLTIME", new java.util.Date().toString());
      	response.sendRedirect((String)ses.getValue("SCREATE"));
     	}
	
     	catch(Exception e){
     		System.out.println(e+"CreateSession");
     	}


%>
</body>
</html>