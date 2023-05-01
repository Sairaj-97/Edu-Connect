<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<%  session.removeAttribute("quizLoad");
    String id=(String)session.getAttribute("QNAME");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st= con.prepareStatement("select * from feedForm where feedId=?");
    st.setString(1,id);
    ResultSet rs=st.executeQuery();
    ArrayList<String> ansList=new ArrayList();
    while(rs.next())
    {
        ansList.add(rs.getString(3));
    }
    String op;
    int sum=25;
    int avg;
    ArrayList<String> param=new ArrayList();
    for(int x=1;x<=ansList.size();x++){
        op="option["+x+"]";
        param.add(op);
    }
    //param array is option[1],option[2]...
    ArrayList<Integer> getOptsFromParam=new ArrayList();
    for(int i=0;i<param.size();i++){
        op=request.getParameter(param.get(i));
        getOptsFromParam.add(Integer.parseInt(op));
    }
    for(int i=0;i<getOptsFromParam.size();i++){
        sum = sum+getOptsFromParam.get(i);

    }
    avg=sum/ansList.size();
    int x=8;
    PreparedStatement st1= con.prepareStatement("select score from feedScore where name=?");
    st1.setString(1,id);
    ResultSet rs1=st1.executeQuery();
    if(rs1.next()){
        x=rs1.getInt(1);
    }
    avg=(avg+x)/2;
    st1= con.prepareStatement("update feedScore set score = ? where name = ?");
    st1.setInt(1,avg);
    st1.setString(2,id);
    st1.executeUpdate();
    response.sendRedirect("stuPage.jsp");

%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="security.jsp"%>--%>


<!--<!DOCTYPE html>
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
   <h1>Acropolis quiz Portal</h1>
  </div>
  <div class="menu"> 
   <ul>
    <li><a href="studentAfterLogin.jsp">Home</a></li>
    <li><a href="updatePassword.jsp">Update Password</a></li>
    <li><a href="#">Contact</a></li>
    <li><a href="destroySession.jsp">LogOut</a></li>
   </ul>
  </div>
 </nav>
       


</header>

    
</body>
</html>-->
