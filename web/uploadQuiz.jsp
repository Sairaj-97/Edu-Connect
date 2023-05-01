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
    <li><a href="teachPage.jsp">Home</a></li>
    <li><a href="#">Update Password</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="destroySession.jsp">LogOut</a></li>
   </ul>
  </div>
 </nav>
 <div class="centercontainer">

     <div class="wrapper formcentre">
         <div class="title">
            upload questions
         </div>
         <form action="uploadQuizCode.jsp">
            <div class="field">
                <input type="text" name="qid" value="<%=quizId%>" required >
               <label>Quiz ID</label>
            </div>
            <div class="field">
               <input type="text" name="ques" required>
               <label>Enter Question</label>
            </div>
            <div class="field">
               <input type="text" name="opt1" required>
               <label>option 1</label>
            </div> 
            <div class="field">
               <input type="text" name="opt2" required>
               <label>option 2</label>
            </div>  
            <div class="field">
               <input type="text" name="opt3" required>
               <label>option 3</label>
            </div> 
             <div class="field">
               <input type="text" name="opt4" required>
               <label>option 4</label>
            </div> 
             <div class="field">
               <input type="text" name="ans" required>
               <label>correct option</label>
            </div> 
            <div class="field">
               <input type="submit" value="upload">
            </div>        
         </form>
      </div>
  
 </div>

</header>

</body>
</html>
