<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%
    String username=request.getParameter("username");
    String firstName=request.getParameter("firstname");
    String lastName=request.getParameter("lastname");
    String pass1=request.getParameter("pass");
    String pass2=request.getParameter("cPass");
    String post=request.getParameter("post");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    if(pass1.equals(pass2)){
    PreparedStatement st= con.prepareStatement("insert into ptm_login values(?,?,?,?,?)");
    st.setString(1,username);
    st.setString(2,pass1);
    st.setString(3,firstName);
    st.setString(4,lastName);
    st.setString(5,post);
    st.executeUpdate();
    if(post.equalsIgnoreCase("student")){
    st= con.prepareStatement("insert into stu_rec values(?,?,?,?,?,?)");
    st.setString(1,username);
    st.setString(2,"0");
    st.setString(3,"0");
    st.setString(4,"0");
    st.setString(5,"0");
    st.setString(6,"0");
    st.executeUpdate();
    }
    if(post.equalsIgnoreCase("parent")){
        session.setAttribute("parentName",username);
        response.sendRedirect("parentChild.jsp");
    }else{
    response.sendRedirect("adminPage.jsp");
    }}
  else
        {%>
    <script> alert("password don't match");
    location.href="adminPage.jsp";</script>
     <%}%>
%>

  


    
    


