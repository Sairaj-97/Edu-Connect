<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%String sname=(String)session.getAttribute("studName");%>
<%
    String fieldName=request.getParameter("fld");
    String upd=request.getParameter("updated");
    PreparedStatement st;
    ResultSet rs;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    if(fieldName.equalsIgnoreCase("attendance"))
    {
        st= con.prepareStatement("update stu_rec set attend=? where stuName=?");
        st.setString(1,upd);
        st.setString(2,sname);
        st.executeUpdate();
    }
    else if(fieldName.equalsIgnoreCase("Big data")){
        st= con.prepareStatement("update stu_rec set sub1=? where stuName=?");
        st.setString(1,upd);
        st.setString(2,sname);
        st.executeUpdate();
    }
    else if(fieldName.equalsIgnoreCase("cloud computing")){
        st= con.prepareStatement("update stu_rec set sub2=? where stuName=?");
        st.setString(1,upd);
        st.setString(2,sname);
        st.executeUpdate();
    }
    else if(fieldName.equalsIgnoreCase("machine learning")){
        st= con.prepareStatement("update stu_rec set sub3=? where stuName=?");
        st.setString(1,upd);
        st.setString(2,sname);
        st.executeUpdate();
    }
    else if(fieldName.equalsIgnoreCase("computer networks")){
        st= con.prepareStatement("update stu_rec set sub4=? where stuName=?");
        st.setString(1,upd);
        st.setString(2,sname);
        st.executeUpdate();
    }

    
    response.sendRedirect("updateStuRec.jsp");
    



%>