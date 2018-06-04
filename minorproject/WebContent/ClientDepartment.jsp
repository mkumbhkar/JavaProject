<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>Insert title here</title>
        
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
              <li><a class="active" href="">DEPARTMENTS</a></li>
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
         
            
         				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            
                                <h1> DEPARTMENTS </h1> 
                             
                                <form action="ClientDepartmentPost.jsp" > 
                                 <input type="hidden" name="department" value="CSE">
								<input type="submit" value="CSE">
								</form>
								<form action="ClientDepartmentPost.jsp" > 
								 <input type="hidden" name="department" value="IT">
								<input type="submit" value="IT"/> 
								</form>
								<form action="ClientDepartmentPost.jsp" >
                                   <input type="hidden" name="department" value="EC">
									<input type="submit" value="EC"/> 
								</form>
								<form action="ClientDepartmentPost.jsp" >
								   <input type="hidden" name="department" value="MECHANICAL">
									<input type="submit" value="MECHANICAL"/> 
								</form>
								<form action="ClientDepartmentPost.jsp" >
								   <input type="hidden" name="department" value="CIVIL">
									<input type="submit" value="CIVIL"/> 
								</form>
								<form action="ClientDepartmentPost.jsp">
								  <input type="hidden" name="department" value="ELECTRICAL">
									<input type="submit" value="ELECTRICAL"/> 
								</form>
								<form action="ClientDepartmentPost.jsp">
								 <input type="hidden" name="department" value="CHEMICAL">
									<input type="submit" value="CHEMICAL"/> 
								</form>
								<form action="ClientDepartmentPost.jsp">
								  <input type="hidden" name="department" value="AUTOMOBILE">
									<input type="submit" value="AUTOMOBILE"/> 
								</form>
								<form action="ClientDepartmentPost.jsp">
								   <input type="hidden" name="department" value="MTECH">
									<input type="submit" value="M.TECH."/> 
								</form>
								<form action="ClientDepartmentPost.jsp">
								   <input type="hidden" name="department" value="MCA">
									<input type="submit" value="MCA"/> 
							
                                </form>
                        </div>

                        
                    </div>
                </div>  
           
        </div>
</body>
</html>
