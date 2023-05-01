<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st= con.prepareStatement("select * from sys_feed");
    ResultSet rs=st.executeQuery();
    ArrayList sub = new ArrayList();
    ArrayList desc = new ArrayList();
    while(rs.next()){
        sub.add(rs.getString(1));
        desc.add(rs.getString(2));
    }
    
%>
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
    <div style="border-radius: 12px;background-color: rgba(0,0,0,0.6);display: flex;flex-direction:column;align-items: center;margin: 100px auto 0px auto;width: 500px;padding: 10px;">
        <table style="border:3px solid white;border-collapse: collapse;">
        <tr style="border:1px solid white; color: white;">
            <td style="border:3px solid white;font-size: 30px;padding: 5px;background-color: black;color: white;">Subject</td>
            <td style="border:3px solid white;font-size: 30px;padding: 5px;background-color: black;color: white;">Description</td>
        </tr>
        <%for(int i=0;i<sub.size();i++)
        {%>
        <tr style="border:1px solid white; color: white;">
            <td style="border:3px solid white;font-size: 15px;padding: 5px;"><%=sub.get(i)%></td>
            <td style="border:3px solid white;font-size: 15px;padding: 5px;"><%=desc.get(i)%>/5</td>
        </tr>     
        <%}%>
    </table>
    </div>

</header>
    

</body>
</html>
