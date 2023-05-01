<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%
    String qid=request.getParameter("qid");

    String que=request.getParameter("ques");
    String o1=request.getParameter("opt1");
    String o2=request.getParameter("opt2");
    String o3=request.getParameter("opt3");
    String o4=request.getParameter("opt4");
    String ans=request.getParameter("ans");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st= con.prepareStatement("insert into quiz_table values(?,?,?,?,?,?,?)");
    st.setString(1,qid);
    st.setString(2,que);
    st.setString(3,o1);
    st.setString(4,o2);
    st.setString(5,o3);
    st.setString(6,o4);
    st.setString(7,ans);
    st.executeUpdate();
    session.setAttribute("QUIZID",qid);
    response.sendRedirect("uploadQuiz.jsp");
    

%>
