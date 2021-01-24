<%
    session.invalidate(); //session destroy
    response.sendRedirect("indexAdmin.jsp"); //after destroy redirect to index.jsp page
%>