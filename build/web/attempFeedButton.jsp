<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="security.jsp"%>
<%String id=(String)session.getAttribute("QNAME");
session.setAttribute("quizLoad", "on");%>

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
    <div style="background: linear-gradient(57deg, #00C6A7 , #1E4D92 );height: 300px; ">
    <h1 style="line-height:140px;font-size: 40px;color:white;text-align: center;margin-top:80px; ">The Feedback will begin once you click on the button below .</h1>
    <div class="ahover">
    <table style="border:3px solid black;border-collapse: collapse;margin-left: auto;margin-top: 20px;margin-right: auto;">
        <tr style="border:1px solid black;">
            <td style="border:1px solid black;background-color: white;font-size: 30px;padding: 5px;font-weight: 700;"><%=id%></td>
            <td style="border:1px solid black;background-color: white;font-size: 30px;padding: 5px;"><a style="text-decoration: none;" href="loadFeedForm.jsp">Start now</a></td>
        </tr>
    </table>
    </div> 
    </div>
</header>

    
</body>
</html>
