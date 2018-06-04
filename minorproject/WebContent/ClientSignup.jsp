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
             <li><a href="AdminLogin.jsp">ADMIN</a></li>
            
              <li><a href="">ABOUT US</a></li>
             <li><a href="ClientLogin.jsp">LOGIN</a></li>
             <li><a class="active" href="">SIGN UP</a></li>
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
                            <form action="ClientRegistrationSubmit" autocomplete="on"> 
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
                                    <label for="usernamesignup" class="uname" data-icon="">Occupation</label>
                                    <select id="occupationsignup" name="occupationsignup" required="required" ><option>Select</option><option>Teacher</option><option>Student</option><option>Other</option></select>> 
                                </p>
                                 <p> 
                                    <label for="usernamesignup" class="uname" data-icon="">Your Institute</label>
                                    <input id="institutesignup" name="institutesignup" required="required" type="text" placeholder="MITS Gwalior" />
                                </p>
                                  <p> 
                                    <label for="usernamesignup" class="uname" data-icon="">Branch</label>
                                    <select id="branchsignup" name="branchsignup" required="required" >
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
                                          <option>OTHER</option>
                                     </select>> 
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
                        <p class="signin button"> 
									<input type="submit" value="Sign up"/> 
								</p>
                                <p class="change_link">  
									Already a member ?
									<a href="ClientLogin.jsp"> Go and log in </a>
								</p>
                            </form>
                        </div>

                        
                    </div>
                </div>  
            </section>
        </div>
</body>
</html>
