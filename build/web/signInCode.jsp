<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%
    String uName=request.getParameter("userName");
    String pass=request.getParameter("pass");
    PreparedStatement st;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    st= con.prepareStatement("select * from ptm_login where userName=? and pass=?");
    st.setString(1,uName);
    st.setString(2,pass);
    ResultSet rs=st.executeQuery();    
    if(rs.next())
    {
  
        String post=rs.getString(5);
        String fName=rs.getString(3);
        String lName=rs.getString(4);
        if(post.equalsIgnoreCase("student")){
            session.setAttribute("CALL",uName);
        session.setAttribute("CALL1",fName);
        session.setAttribute("CALL2",lName);
        session.setAttribute("CALL3",post);
            response.sendRedirect("stuPage.jsp");
        }
        else if(post.equalsIgnoreCase("admin")){
            session.setAttribute("CALL",uName);
        session.setAttribute("CALL1",fName);
        session.setAttribute("CALL2",lName);
        session.setAttribute("CALL3",post);
            response.sendRedirect("adminPage.jsp");
        }
        else if(post.equalsIgnoreCase("teacher")){
            session.setAttribute("CALL",uName);
        session.setAttribute("CALL1",fName);
        session.setAttribute("CALL2",lName);
        session.setAttribute("CALL3",post);
            response.sendRedirect("teachPage.jsp");
        }
        else if(post.equalsIgnoreCase("parent")){
            session.setAttribute("CALL",uName);
        session.setAttribute("CALL1",fName);
        session.setAttribute("CALL2",lName);
        session.setAttribute("CALL3",post);
            response.sendRedirect("parentPage.jsp");
        }
         
        
    }
    else
        {%>
            <script >
    alert("invalid credentials.");
    location.href = "signInPage.jsp";
    </script>
     <%}%>

    


%>
