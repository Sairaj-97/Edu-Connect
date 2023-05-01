<%@include file="security.jsp"%>
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
    <li><a href="adminPage.jsp">Home</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="destroySession.jsp">LogOut</a></li>
   </ul>
  </div>
 </nav>
 <div class="centercontainer">

  <div class="wrapper updatePassForm">
         <div class="title">
            Change Your Password
         </div>
         <form action="updatePasswordCode.jsp">
            <div class="field">
               <input type="text" name="user" required>
               <label>Username</label>
            </div>
            <div class="field">
               <input type="password" name="oldPass" required>
               <label>Current Password</label>
            </div>
             <div class="field">
               <input type="password" name="newPass" required>
               <label>New Password</label>
            </div>
             <div class="field">
               <input type="password" name="cNewPass" required>
               <label>Confirm Password</label>
            </div>
            <div class="field">
               <input type="submit" value="Update">
            </div>

         </form>
      </div>
  
 </div>

</header>
    

</body>
</html>
