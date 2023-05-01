<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%
    String stuName=(String)session.getAttribute("CALL");
    String subject=request.getParameter("sub");
    String desc=request.getParameter("desc");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st= con.prepareStatement("insert into concern_table values(?,?)");
    st.setString(1,subject);
    st.setString(2,desc);
    st.executeUpdate();  
    response.sendRedirect("registerConcern.jsp");

    
    

%>
