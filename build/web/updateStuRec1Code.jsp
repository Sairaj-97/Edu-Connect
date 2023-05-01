<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%
    String uname=request.getParameter("uname");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st= con.prepareStatement("select * from stu_rec where stuName=? ");
    st.setString(1,uname);
    ResultSet rs=st.executeQuery();
    if(rs.next()){ 
            session.setAttribute("studName",uname);
    response.sendRedirect("updateStuRec.jsp");
    }
    else
        {%>
    <script> alert("invalid username");</script>
     <%}%>

    

%>

  


    
    


