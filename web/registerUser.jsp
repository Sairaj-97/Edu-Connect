<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="security.jsp"%>
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
   <li><a href="adminPage.jsp">Home</a></li>
    <li><a href="#">Update Password</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="destroySession.jsp">LogOut</a></li>
   </ul>
  </div>
 </nav>
 <div class="centercontainer">

  <div class="wrapper updatePassForm">
         <div class="title">
            Register User
         </div>
         <form action="registerUserCode.jsp">
            <div class="field">
               <input type="text" name="username" required>
               <label>Username</label>
            </div>
            <div class="field">
               <input type="text" name="firstname" required>
               <label>First Name</label>
            </div>
            <div class="field">
               <input type="text" name="lastname" required>
               <label>Last Name</label>
            </div>
             <div class="field">
               <input type="password" name="pass" required>
               <label>Password</label>
            </div>
             <div class="field">
               <input type="password" name="cPass" required>
               <label>Confirm Password</label>
            </div>

             <div class="field">
                 <label for="post">Choose a post:</label><br><br>
                <select id="post" name="post" style="margin-left: 20px;">
                    <option value="Teacher">Teacher</option>
                    <option value="Student">Student</option>
                    <option value="Parent">Parent</option>
                </select>
            </div>
            <div class="field">
                <input type="submit" value="Register" style="margin-top: 20px;">
            </div>

         </form>
      </div>
  
 </div>

</header>
    

</body>
</html>
