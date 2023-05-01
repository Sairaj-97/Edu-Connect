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
    PreparedStatement st1= con.prepareStatement("select * from teacher_msg where student=?");
    
    st1.setString(1,cName);

    ArrayList tchr=new ArrayList();
    ArrayList stu=new ArrayList();
    ArrayList sub=new ArrayList();
    ArrayList msg=new ArrayList();
    ResultSet rs1=st1.executeQuery();
    while(rs1.next()){
        tchr.add(rs1.getString(1));
        stu.add(rs1.getString(2));
        sub.add(rs1.getString(3));
        msg.add(rs1.getString(4));
    }

//    String tchr="",stu="",sub="",msg="";
//    ResultSet rs1=st1.executeQuery();
//    if(rs1.next()){
//
//        tchr=rs1.getString(1);
//        stu=rs1.getString(2);
//        sub=rs1.getString(3);
//        msg=rs1.getString(4);
//
//    }
    
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


 <div style="border-radius: 12px;background-color: rgba(0,0,0,0.6);display: flex;flex-direction:column;align-items: center;margin: 100px auto 0px auto;width: 1000px;padding: 10px;">
        <table style="border:3px solid white;border-collapse: collapse;">
        <tr style="border:1px solid white; color: white;">
            <td style="border:3px solid white;font-size: 30px;padding: 5px;background-color: black;color: white;">Teacher Name</td>
            <td style="border:3px solid white;font-size: 30px;padding: 5px;background-color: black;color: white;">Student Name</td>
            <td style="border:3px solid white;font-size: 30px;padding: 5px;background-color: black;color: white;">Subject</td>
            <td style="border:3px solid white;font-size: 30px;padding: 5px;background-color: black;color: white;">Message</td>
        </tr>
        
        <% for(int i=0;i<tchr.size();i++)
        {%>
        <tr style="border:1px solid white; color: white;">
            <td style="border:3px solid white;font-size: 15px;padding: 5px;"><%=tchr.get(i)%></td>
            <td style="border:3px solid white;font-size: 15px;padding: 5px;"><%=stu.get(i)%></td>
            <td style="border:3px solid white;font-size: 15px;padding: 5px;"><%=sub.get(i)%></td>
            <td style="border:3px solid white;font-size: 15px;padding: 5px;"><%=msg.get(i)%></td>
        </tr>     
        <%}%>
    </table>
    </div>
        
        


</header>
    

</body>
</html>
