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
    <li><a href="updatePassword.jsp">Update Password</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="destroySession.jsp">LogOut</a></li>
   </ul>
  </div>
 </nav>
 <div class="centercontainer">

  <div class="wrapper updatePassForm">
         <div class="title">
            Delete User
         </div>
         <form action="deleteUserCode.jsp">
            <div class="field">
               <input type="text" name="username" required>
               <label> Username</label>
            </div>
            <div class="field">
               <input type="submit" value="DELETE">
            </div>

         </form>
      </div>
  
 </div>

</header>
    

</body>
</html>
