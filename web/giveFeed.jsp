
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
    <li><a href="stuPage.jsp">Home</a></li>
    <li><a href="updatePasswordStu.jsp">Update Password</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="destroySession.jsp">LogOut</a></li>
   </ul>
  </div>
 </nav>
    <div class="centercontainer">

 <div class="centercontainer">
     <div class="wrapper formcentre" style="margin-top: 50px;">
         <div class="title">
            Search Teacher Name
         </div>
         <form action="checkFeedId.jsp">
            <div class="field">
                <input type="text" name="qid"  required >
               <label>Enter Teacher Name</label>
            </div>
             
            <div class="field">
               <input type="submit" value="Search">
            </div>        
         </form>
        
      </div>
 <br>
 </div>
  
 </div>

</header>
    

</body>
</html>
