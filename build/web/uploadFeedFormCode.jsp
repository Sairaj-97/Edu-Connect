<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%
    String qid=request.getParameter("qid");
    String que=request.getParameter("ques");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st= con.prepareStatement("insert into feedForm values(?,?,?)");
    PreparedStatement st1 = con.prepareStatement("select * from feedScore where name=?");
    st1.setString(1,qid);
    ResultSet rs=st1.executeQuery();
    if(rs.next())
    {
    st.setString(1,qid);
    st.setString(2,que);
    st.setString(3,"0");
    st.executeUpdate();
    session.setAttribute("QUIZID",qid);
    response.sendRedirect("uploadFeedForm.jsp");
    }
    else{
     st1= con.prepareStatement("insert into feedScore values(?,?)");
     st1.setString(1,qid);
     st1.setInt(2,0);
     st1.executeUpdate();
     st.setString(1,qid); 
    st.setString(2,que);
    st.setString(3,"0");
    st.executeUpdate();
    session.setAttribute("QUIZID",qid);
    response.sendRedirect("uploadFeedForm.jsp");
    }
    
    

%>
