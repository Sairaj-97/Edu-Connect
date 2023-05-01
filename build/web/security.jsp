<%
    response.addHeader("Pragma","no-cache");//pragma means global browser(for all browers)
    response.addHeader("cache-control","no-store");//dont store cache 
    String value=(String)session.getAttribute("CALL");
    if (value==null)
    {
        response.sendRedirect("home.jsp");
    }
    if (session==null)
    {
        response.sendRedirect("home.jsp");
    }
%>
