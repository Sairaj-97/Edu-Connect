<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%
    String user=request.getParameter("username");
    PreparedStatement st;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    st= con.prepareStatement("delete from ptm_login where userName=?");
    st.setString(1,user);
    int rs=st.executeUpdate();    
    if(rs>0)
    {
     %>  <script> alert("user deleted")</script>
     <%response.sendRedirect("adminPage.jsp");
    }
    else{
    %><script> alert("invalid username")</script>
    <%}%>
    
    

    