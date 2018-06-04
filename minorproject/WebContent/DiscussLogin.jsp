<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

 <html lang="en" class="no-js"> 
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
             <li><a href="index.jsp">HOME</a></li>
             <li><a href="Departments.jsp">DEPARTMENTS</a></li>
             <li><a href="PrivatePosts.jsp">PRIVATE DISCUSSION</a></li>
             <li><a href="AdminLogin.jsp">ADMIN</a></li>
             
              <li><a href="">ABOUT US</a></li>
             <li><a class="active" href="">LOGIN</a></li>
             <li><a href="ClientSignup.jsp">SIGN UP</a></li>
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
                            <form  action="ClientLoginCheck" autocomplete="on"> 
                               
                                <h1>Log in</h1> 
                                <%if(request.getParameter("check")=="true")
                                   {%><input type="hidden" name="check" value="true"><%}
                                %>
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Your Email </label>
                                    <input id="useremail" name="useremail" required="required" type="text" placeholder="mymail@mail.com"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">Keep me logged in</label>
								</p>
                                <p class="login button"> 
                                    <input type="submit" value="Login" /> 
								</p>
                                <p class="change_link">
									Not a member yet ?
									<a href="#toregister" class="to_register">Join us</a>
								</p>
                            </form>
                        </div>

                        <div id="register" class="animate form">
                            <form  action="ClientRegistrationSubmit" autocomplete="on"> 
                                <h1> Sign up </h1> 
                                 <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Your Name</label>
                                    <input id="namesignup" name="namesignup" required="required" type="text" placeholder="Piyush Tekam" />
                                </p>
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Your username</label>
                                    <input id="usernamesignup" name="unamesignup" required="required" type="text" placeholder="mysuperusername690" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" > Your email</label>
                                    <input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Your password </label>
                                    <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Please confirm your password </label>
                                    <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                 <p> 
                                    <label for="usernamesignup" class="uname" data-icon="">Your Institute</label>
                                    <input id="institutesignup" name="institutesignup" required="required" type="text" placeholder="MITS Gwalior" />
                                </p>
                                 <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Enrollment No.</label>
                                    <input id="enrollmentsignup" name="enrollmentsignup" required="No" type="text" placeholder="0901CS151150" />
                                </p>
                                 <p> 
                                    <label for="usernamesignup" class="uname" data-icon="">Gender</label>
                                    <select id="gendersignup" name="gendersignup" required="required" ><option>Select</option><option>Male</option><option>Female</option><option>Other</option></select>> 
                                </p>
                                 <p> 
                                    <label for="usernamesignup" class="uname" data-icon="">Date of Birth</label>
                                    <input id="dobsignup" name="dobsignup" required="required" type="Date" placeholder="" />
                                </p>
                                 <p> 
                                    <label for="" class="" data-icon="">Your Address</label><br>
                                    <textarea rows="4" cols="60" id="addresssignup" name="addresssignup" required="required" type="text-area" placeholder=""></textarea>
                                     <p> 
                                    <label for="usernamesignup" class="uname" data-icon="">Mobile No</label>
                                    <input id="mobilesignup" name="mobilesignup" required="required" type="Mobile" placeholder="99777XXXXX" />
                                </p>
                                </p>
                                 <p> 
                                    <label for="usernamesignup" class="uname" data-icon="">Interest</label>
                                    <input id="interestsignup" name="interestsignup" required="" type="text" placeholder="Programming.." />
                                </p>
                                 <p> 
                                    <label for="usernamesignup" class="uname" data-icon="">Occupation</label>
                                    <select id="occupationsignup" name="occupationsignup" required="required" ><option>Select</option><option>Teacher</option><option>Student</option><option>Other</option></select>> 
                                </p>
                                <p class="signin button"> 
									<input type="submit" value="Sign up"/> 
								</p>
                                <p class="change_link">  
									Already a member ?
									<a href="#tologin" class="to_register"> Go and log in </a>
								</p>
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
    </body>
</html>