<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="security.jsp"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>

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
    <li><a href="updatePasswordStu.jsp">Update Password</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="destroySession.jsp">LogOut</a></li>
   </ul>
  </div>
 </nav>
<div style="border: 2px solid black;padding: 10px;background-color: white;width: 1100px;margin:160px auto 0px auto;height: 123px;">
    <h1 style="color:white;text-align: center;line-height: 100px;background-color: rgba(0,0,0,0.5);">Feedback Was Submitted!!</h1>
    </div>
 
</header>

    
</body>
</html>
