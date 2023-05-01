<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="security.jsp"%>
<% String quizId=(String)session.getAttribute("QUIZID");%>
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
    <li><a href="stuPage.jsp">Home</a></li>
    <li><a href="updatePassword.jsp">Update Password</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="destroySession.jsp">LogOut</a></li>
   </ul>
  </div>
 </nav>
 <div class="centercontainer">

     <div class="wrapper formcentre">
         <div class="title">
            Register Complaint
         </div>
         <form action="registerConcernCode.jsp">
            
            <div class="field">
               <input type="text" name="sub" required>
               <label>Enter Subject</label>
            </div>
             <div class="field">

               <textarea name="desc" rows="6" cols="41" placeholder="Write your description here.">
</textarea>
             </div>
            <div class="field">
               <input style="margin-top: 37px;" type="submit" value="Submit">
            </div>        
         </form>
      </div>
  
 </div>

</header>

</body>
</html>
