<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>
<%  session.removeAttribute("quizLoad");
    String id=(String)session.getAttribute("QNAME");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st= con.prepareStatement("select * from quiz_table where quizid=?");
    st.setString(1,id);
    ResultSet rs=st.executeQuery();
    ArrayList<String> ansList=new ArrayList();
    while(rs.next())
    {
        ansList.add(rs.getString(7));
    }
    String op;
    ArrayList<String> param=new ArrayList();
    for(int x=1;x<=ansList.size();x++){
        op="option["+x+"]";
        param.add(op);
    }
    int score=0;
    int attempted=0;
    //param array is option[1],option[2]...
    //ansList is correct options
    ArrayList<String> getOptsFromParam=new ArrayList();
    for(int i=0;i<param.size();i++){
        op=request.getParameter(param.get(i));
        getOptsFromParam.add(op);
        if(op!=null){
            attempted=attempted+1;
        }
    }
    for(int i=0;i<ansList.size();i++){
        if(ansList.get(i).equals(getOptsFromParam.get(i))){
            score=score+1;
        }
    }
    String totalQues=(String)session.getAttribute("noOfQues");
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
    <li><a href="studentAfterLogin.jsp">Home</a></li>
    <li><a href="updatePassword.jsp">Update Password</a></li>
    <li><a href="contact.jsp">Contact</a></li>
    <li><a href="destroySession.jsp">LogOut</a></li>
   </ul>
  </div>
 </nav>
    <div style="border: 2px solid black;padding: 10px;background-color: white;width: 1100px;margin:160px auto 0px auto;height: 200px;">
    <h1 style="color:white;text-align: center;line-height: 100px;background-color: rgba(0,0,0,0.5);">You Attempted <%=attempted%> Questions out of <%=totalQues%> !!</h1>
    <br>
    <h1 style="text-align: center;">Your Score is <%=score%>  out of <%=totalQues%> !!</h1>
    </div>
    <br>
    <%String scr=Integer.toString(score);
        session.setAttribute("stuScore",scr);%>
    <form action="storeQuizScore.jsp">        
        <input class="sbbtn" style="font-weight: 900;font-size: 25px;" type="submit" value="Finish">
    </form>
</header>

    
</body>
</html>
