
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title></title>
 <link rel="stylesheet" type="text/css" href="style.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">

</head>
<body>

<header class="site-header clearfix">
 <nav>
  <div class="logo">
   <h1>EduConnect</h1>
  </div>
  <div class="menu"> 
   <ul>
   <li><a href="home.jsp">Home</a></li>
    <li><a href="services.jsp">Services</a></li>
    <li><a href="about.jsp">About Us</a></li>
    <li><a href="contact.jsp">contact</a></li>
   </ul>
  </div>
 </nav>
 <section>
     <div class="leftside" id="leftDiv"> 
   <img src="ptm2.png">
  </div>
  <div class="rightside" id="rightDiv"> 
   
      <div class="wrapper">
         <div class="title">
            Login Form
         </div>
         <form action="signInCode.jsp">
            <div class="field">
               <input type="text" name="userName" required>
               <label>Username</label>
            </div>
            <div class="field">
               <input type="password" name="pass" required>
               <label>Password</label>
            </div>
<!--            <div class="content">
               <div class="pass-link">
                  <a href="#">Forgot password?</a>
               </div>
            </div>-->
            <div class="field">
               <input type="submit" value="Login">
            </div>
            
         </form>
      </div>

  </div>
  
 </section>

</header>
    


</body>
</html>
