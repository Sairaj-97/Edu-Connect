<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="security.jsp"%>
<%String name=(String)session.getAttribute("CALL");%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<%String sname=(String)session.getAttribute("studName");%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st= con.prepareStatement("select * from stu_rec where stuName=?");
    st.setString(1,sname);
    String att="",s1="",s2="",s3="",s4="";
    ResultSet rs=st.executeQuery();
    if(rs.next()){

        att=rs.getString(2);
        s1=rs.getString(3);
        s2=rs.getString(4);
        s3=rs.getString(5);
        s4=rs.getString(6);

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
    <li><a href="teachPage.jsp">Home</a></li>
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
            <td style="border:3px solid white;font-size: 15px;padding: 5px; color: black;font-weight: 800;"><%=sname%></td>
            <td style="border:3px solid white;font-size: 15px;padding: 5px; color: black;font-weight: 800;"><%=att%></td>
            <td style="border:3px solid white;font-size: 15px;padding: 5px; color: black;font-weight: 800;"><%=s1%></td>
            <td style="border:3px solid white;font-size: 15px;padding: 5px; color: black;font-weight: 800;"><%=s2%></td>
            <td style="border:3px solid white;font-size: 15px;padding: 5px; color: black;font-weight: 800;"><%=s3%></td>
            <td style="border:3px solid white;font-size: 15px;padding: 5px; color: black;font-weight: 800;"><%=s4%></td>
        </tr>     

    </table>
    

                   

    </div>
        
        <div class="wrapper" style="margin-top: 100px;margin-left: 380px;">
         <form action="updateStuRecCode.jsp">
            <div class="field">
                <label style="margin-left: 38px;">Select Field To Update:</label>
            </div>
            <div class="field">
                <select name="fld" style="margin-left: 78px;">
                <option value="Attendance">Attendance</option>
                <option value="Big Data">Big Data</option>
                <option value="Cloud Computing">Cloud Computing</option>
                <option value="Machine Learning">Machine Learning</option>
                <option value="Computer Networks">Computer Networks</option>
               </select>
            </div>
               <div class="field">
               <input type="text" name="updated" required>
               <label>Enter Updated Percentage</label>
            </div>
            <div class="field">
               <input type="submit" value="update">
            </div>
            
         </form>
      </div>


</header>
    

</body>
</html>
