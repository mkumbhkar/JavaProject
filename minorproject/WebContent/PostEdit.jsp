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
<%@ page import="com.mk.model.Client"%>
<%@ page import="com.mk.model.Post"%>
<%@ page import="java.util.Date"%>
<%
HttpSession ses=request.getSession();
Client A;
	try{
	A=(Client)ses.getValue("SCLIENT");	
	String ltime=(String)ses.getValue("SLTIME");
	Post P=(Post)ses.getValue("SPOST");	
%>
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
 <br><br><br><br><br>
        <div class="container">
         
            
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                      
                   
                        <div id="login" class="animate form">
                            <form action="PostEditSubmit" autocomplete="on"> 
                                <h1>Edit your Post</h1> 
                              
                                <p> 
                                   <label for="" class="" > Post Title </label>
                                    <input id="newpost" name="posttitle" value="<%= P.getPosttitle()%>" required="required" type="text" placeholder="post title"/>
                               </p>
                                <p> 
                                     <label for="" class="" > Post Privacy </label>
                                     <select id="privacy" name="postprivacy" value="<%=P.getPrivacy()%>"><option>Select</option><option>Public</option><option>Private</option></select>>         
                                </p>
                                <p> 
									 <label for="" class="" > Department </label>
                                     <select id="department" name="department"  >
                                          <option>Select</option>
                                          <option>CSE</option>
                                          <option>IT</option>
                                          <option>EC</option>
                                          <option>MECHANICAL</option>
                                          <option>CIVIL</option>
                                          <option>ELECTRICAL</option>
                                          <option>CHEMICAL</option>
                                          <option>AUTOMOBILE</option>
                                          <option>M.Tech</option>
                                          <option>MCA</option>
                                     </select>>
                                </p>
                                <p>
                                      <label for="" class="" > Post Content </label>
                                      <textarea rows="10" cols="60" id="postcontent" name="postcontent" ><%=P.getContent()%></textarea>
                
                                </p>
                                <p class="login button"> 
                                    <input type="submit" value="CONFIRM" /> 
								</p>
                            
                            </form>
                        </div>

                        
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
                	}
%>