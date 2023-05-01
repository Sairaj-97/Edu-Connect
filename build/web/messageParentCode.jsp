<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%
    String tName=(String)session.getAttribute("CALL");
    String stu=request.getParameter("sname");
    String subject=request.getParameter("sub");
    String msg=request.getParameter("desc");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st;
    st= con.prepareStatement("select * from parent_child where childName=?");
    st.setString(1,stu);
    ResultSet rs;
    rs=st.executeQuery();
    if(rs.next())
    {
    st= con.prepareStatement("insert into teacher_msg values(?,?,?,?)");
    st.setString(1,tName);
    st.setString(2,stu);
    st.setString(3,subject);
    st.setString(4,msg);
    st.executeUpdate(); 
     %>  <script >
        alert("message sent successfully!");
        location.href = "teachPage.jsp";
        </script>
    <%}
    else
        {%>
        <script >
    alert("invalid student username,please try again!");
    location.href = "teachPage.jsp";
    </script>
     <%}%>

    
    


