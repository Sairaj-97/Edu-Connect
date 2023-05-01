<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%
    
    String stuScore=(String)session.getAttribute("stuScore");
    String enroll=(String)session.getAttribute("CALL");
    String qid=(String)session.getAttribute("QNAME");
    String totalQues=(String)session.getAttribute("noOfQues");
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st= con.prepareStatement("insert into quiz_result values(?,?,?,?,?)");
    st.setString(1,enroll);
    st.setString(2," ");
    
    st.setString(3,qid);
    st.setString(4,stuScore);
    st.setString(5,totalQues);
    st.executeUpdate();
    response.sendRedirect("stuPage.jsp");
    
    

%>


