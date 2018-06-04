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
             <li><a href="index.jsp">HOME</a></li>
             <li><a href="Departments.jsp">DEPARTMENTS</a></li>
             <li><a href="PrivatePosts.jsp">PRIVATE DISCUSSION</a></li>
             <li><a class="active" href="AdminLogin.jsp">ADMIN</a></li>
              <li><a href="">ABOUT US</a></li>
             <li><a href="ClientLogin.jsp">LOGIN</a></li>
             <li><a href="ClientSignup.jsp">SIGN UP</a></li>
         </ul>
    </div>
 </div>

<br><br><br><br><br>
<div class="container">
         <section>
            <div id="container_demo" >
                 <div id="wrapper">
                   <div id="login" class="animate form">
                            <form  action="AdminLoginCheck" autocomplete="on"> 
                                <h1>Admin Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Admin ID </label>
                                    <input id="adminid" name="adminid" required="required" type="text" placeholder=""/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <input id="password" name="pwd" required="required" type="password" placeholder="" /> 
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">Keep me logged in</label>
								</p>
                                <p class="login button"> 
                                    <input type="submit" value="Login" /> 
								</p>
                               
                            </form>
                        </div>
                   
                 </div>
            </div>
         </section>
    </div>
</body>
</html>