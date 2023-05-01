<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="security.jsp"%>
<%String name=(String)session.getAttribute("CALL");%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st= con.prepareStatement("select * from parent_child where parentName=?");
    st.setString(1,name);
    String cName="";
    ResultSet rs=st.executeQuery();
    if(rs.next()){

        cName=rs.getString(2);

    }
    PreparedStatement st1= con.prepareStatement("select * from stu_rec where stuName=?");
    
    st1.setString(1,cName);
    String att="",s1="",s2="",s3="",s4="";
    ResultSet rs1=st1.executeQuery();
    if(rs1.next()){

        att=rs1.getString("attend");
        s1=rs1.getString("sub1");
        s2=rs1.getString("sub2");
        s3=rs1.getString("sub3");
        s4=rs1.getString("sub4");

    }
    
%>
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
    <li><a href="parentPage.jsp">Home</a></li>
    <li><a href="updatePassword.jsp">Update Password</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="destroySession.jsp">LogOut</a></li>
   </ul>
  </div>
 </nav>

    <div style="border-radius: 12px;display: flex;flex-direction:column;align-items: center;margin: 100px auto 0px auto;width: 500px;padding: 10px;">
        <table style="border:3px solid white;border-collapse: collapse;">
        <tr style="border:1px solid white; color: white;">
            <td style="border:3px solid white;font-size: 23px;padding: 5px;background-color: black;color: white;">Student Name</td>
            <td style="border:3px solid white;font-size: 23px;padding: 5px;background-color: black;color: white;">Attendance(%)</td>
            <td style="border:3px solid white;font-size: 23px;padding: 5px;background-color: black;color: white;">Big Data(%)</td>
            <td style="border:3px solid white;font-size: 23px;padding: 5px;background-color: black;color: white;">Cloud Computing(%)</td>
            <td style="border:3px solid white;font-size: 23px;padding: 5px;background-color: black;color: white;">Machine Learning(%)</td>
            <td style="border:3px solid white;font-size: 23px;padding: 5px;background-color: black;color: white;">Computer Networks(%)</td>
        </tr>

        <tr style="border:1px solid white; color: white;">
            <td style="border:3px solid white;font-size: 15px;padding: 5px; color: black;font-weight: 800;"><%=cName%></td>
            <td style="border:3px solid white;font-size: 15px;padding: 5px; color: black;font-weight: 800;"><%=att%></td>
            <td style="border:3px solid white;font-size: 15px;padding: 5px; color: black;font-weight: 800;"><%=s1%></td>
            <td style="border:3px solid white;font-size: 15px;padding: 5px; color: black;font-weight: 800;"><%=s2%></td>
            <td style="border:3px solid white;font-size: 15px;padding: 5px; color: black;font-weight: 800;"><%=s3%></td>
            <td style="border:3px solid white;font-size: 15px;padding: 5px; color: black;font-weight: 800;"><%=s4%></td>
        </tr>     

    </table>
    

                   

    </div>
        
        


</header>
    

</body>
</html>
