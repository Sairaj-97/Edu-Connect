<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%
    String uName=request.getParameter("user");
    String pass=request.getParameter("oldPass");
    String nPass=request.getParameter("newPass");
    String cNewPass=request.getParameter("cNewPass");
    PreparedStatement st;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    st= con.prepareStatement("select * from ptm_login where userName=? and pass=?");
    st.setString(1,uName);
    st.setString(2,pass);
    ResultSet rs=st.executeQuery();    
    if(rs.next())
    {
         if(nPass.equals(cNewPass)){
            st= con.prepareStatement("update ptm_login set pass=? where userName=?");
            st.setString(1,nPass);
            st.setString(2,uName);
            st.executeUpdate();
            response.sendRedirect("signInPage.jsp");
         }
    }
    



%>