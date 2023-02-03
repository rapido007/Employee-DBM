<%-- 
    Document   : cotrollerEmp
    Created on : Jan 2, 2023, 11:12:23 PM
    Author     : pc
--%>

<%@page import="emp.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String s = request.getParameter("e1");
            int eid = Integer.parseInt(s);
            Object emp = session.getAttribute("list");
            ArrayList<Employee> emplist = (ArrayList<Employee>) emp;
            int size=emplist.size();
            boolean b=false;
            for(int i=0;i<size;i++)
            {
                Employee e = emplist.get(i);
                int id = e.getEmpid();
                if(id==eid)
                {
                    session.setAttribute("empd",e);
                    b=true;
                    response.sendRedirect("empView.jsp");
                }
            }
            if(b==false)
            {
                response.sendRedirect("wrongEmp.jsp");
            }
        %>
    </body>
</html>
