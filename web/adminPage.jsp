<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="security.jsp"%>
<%String name=(String)session.getAttribute("CALL");%>
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
<h1 style="color:white;background: linear-gradient(57deg, #00C6A7 , #1E4D92 ); font-weight: 900;padding: 10px;text-align: center;height: 150px;line-height: 100px;">Welcome <%=name%> ! </h1>
<br>     <br> <br>   
<div class="centreAlign"> 
            
  
   <a href="deleteUser.jsp" class="homebuttons">Delete User</a>
    <a href="registerUser.jsp" class="homebuttons">Register User</a>
   <a href="viewFeedback.jsp" class="homebuttons">View Teacher Feedback</a>
      <a href="viewComplaint.jsp" class="homebuttons">View Complaints</a>
   <a href="uploadFeedForm.jsp" class="homebuttons">Create Feedback form</a>


  </div>
<br><br><br><a href="viewSystemFeedback.jsp" class="homebuttons" style="margin-left: 560px">View System Feedback</a>
 </div>

</header>
    

</body>
</html>
