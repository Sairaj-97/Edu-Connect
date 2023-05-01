<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>

<%
    String subject=request.getParameter("sub");
    String msg=request.getParameter("desc");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st = con.prepareStatement("insert into sys_feed values(?,?)");
    st.setString(1,subject);
    st.setString(2,msg);
    st.executeUpdate(); 
    response.sendRedirect("giveSystemFeedback.jsp");

%>
    


