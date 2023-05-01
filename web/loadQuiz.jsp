<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<%  
    response.addHeader("Pragma","no-cache");//pragma means global browser(for all browers)
    response.addHeader("cache-control","no-store");//dont store cache 
    String quizVal=(String)session.getAttribute("quizLoad");
    if (quizVal==null)
    {
        response.sendRedirect("quizAlreadySubmitted.jsp");
    }
    if (session==null)
    {
        response.sendRedirect("quizAlreadySubmitted.jsp");
    }
    int quesNo=1;
    int j=1;
    String id=(String)session.getAttribute("QNAME");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st= con.prepareStatement("select * from quiz_table where quizid=?");
    st.setString(1,id);
    ResultSet rs=st.executeQuery();
    ArrayList qlist=new ArrayList();
    ArrayList o1list=new ArrayList();
    ArrayList o2list=new ArrayList();
    ArrayList o3list=new ArrayList();
    ArrayList o4list=new ArrayList();
    ArrayList anslist=new ArrayList();
    while(rs.next())
    {
        
        qlist.add(rs.getString(2));
        o1list.add(rs.getString(3));
        o2list.add(rs.getString(4));
        o3list.add(rs.getString(5));
        o4list.add(rs.getString(6));
        anslist.add(rs.getString(7));
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <li><a href="stuPage.jsp">Home</a></li>
    <li><a href="updatePassword.jsp">Update Password</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="destroySession.jsp">LogOut</a></li>
   </ul>
  </div>
 </nav>
    <form action="quizResult.jsp">
            <br>
    <br>
        <%for(int i=0;i<qlist.size();i++)
    {%>

    <div class="ques">
        <div class="qhead">
        <h1 style="font-size: 30px; ">Q:<%=quesNo++%> <%=qlist.get(i)%></h1>
        </div>
        <br>
        <input type="radio" id="o1" name="option[<%=j%>]" value="1">
                <label for="o1" style="color: white;"><%=o1list.get(i)%></label><br>
        <input type="radio" id="o2" name="option[<%=j%>]" value="2">
        <label for="o2" style="color: white;"><%=o2list.get(i)%></label><br>
        <input type="radio" id="o3" name="option[<%=j%>]" value="3">
        <label for="o3" style="color: white;"><%=o3list.get(i)%></label><br>
        <input type="radio" id="o4" name="option[<%=j++%>]" value="4">
        <label for="o4" style="color: white;"><%=o4list.get(i)%></label><br>
        

    </div>
<br>
<%}quesNo--;String tQues=Integer.toString(quesNo);session.setAttribute("noOfQues",tQues);%>  
    <br>
               <input class="sbbtn" type="submit" value="submit quiz">

    </form>
    <br>
</header>

    
</body>
</html>


