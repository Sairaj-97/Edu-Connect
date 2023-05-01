<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%
    String pname=request.getParameter("pname");
    String cname=request.getParameter("cname");


    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st= con.prepareStatement("insert into parent_child values(?,?)");
    st.setString(1,pname);
    st.setString(2,cname);
    st.executeUpdate();
    response.sendRedirect("adminPage.jsp");

%>

  


    
    


