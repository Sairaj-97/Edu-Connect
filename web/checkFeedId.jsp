<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="security.jsp"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%
    String qid=request.getParameter("qid");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st= con.prepareStatement("select * from feedForm where feedId=?");    
    st.setString(1,qid);
    ResultSet rs=st.executeQuery();%>
    


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
   <h1>Acropolis PTM Portal</h1>
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
     <div class="wrapper formcentre" style="margin-top: 50px;">
         <div class="title">
            Search Teacher Name
         </div>
         <form action="checkFeedId.jsp">
            <div class="field">
                <input type="text" name="qid"  required >
               <label>Enter teacher ID</label>
            </div>
             
            <div class="field">
               <input type="submit" value="Search">
            </div>        
         </form>
         <div class="centreAlign" style="position: absolute;bottom: 10px;left:85px;">
                <%if(rs.next())
    {   
        
        response.sendRedirect("attempFeedButton.jsp");
        session.setAttribute("QNAME",qid);
        
    }
    else
    {
        out.print("<h1> Invalid Teacher </h1>");
    }
%>
        </div>
      </div>
 <br>
 </div>

</header>

    
</body>
</html>
