<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="security.jsp"%>
<%String parent=(String)session.getAttribute("parentName");%>
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
            Link Child's activities with his/her parent
         </div>
         <form action="parentChildCode.jsp">
            <div class="field">
               <input type="text" name="pname" value ="<%=parent%>" required>
               <label>parent's Username</label>
            </div>
            <div class="field">
               <input type="text" name="cname" required>
               <label>Child's Username</label>
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
