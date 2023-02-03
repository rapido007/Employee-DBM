<%-- 
    Document   : controllerAdm
    Created on : Dec 25, 2022, 4:21:38 PM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String user = request.getParameter("f1");
            String pass = request.getParameter("f2");
            if(user.equals("admin") && pass.equals("password"))
            {
                response.sendRedirect("view.jsp");
            }
            else
            {
                response.sendRedirect("wrong.jsp");
            }
        %>
    </body>
</html>
