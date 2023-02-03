<%-- 
    Document   : controller
    Created on : Dec 25, 2022, 11:08:32 AM
    Author     : pc
--%>

<%@page import="emp.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controller</title>
        <link rel="stylesheet" href="stylo.css">
    </head>
    <body>
        <%
            String tempid = request.getParameter("t1");
            int empid = Integer.parseInt(tempid);
            String name = request.getParameter("t2");
            String tempage = request.getParameter("t3");
            int age = Integer.parseInt(tempage);
            String tempbs = request.getParameter("t4");
            double bs = Double.parseDouble(tempbs);
            Employee e = new Employee();
            e.setEmpid(empid);
            e.setName(name);
            e.setAge(age);
            e.setBs(bs);
            Object obj = session.getAttribute("list");
            ArrayList<Employee> empL = new ArrayList<>();
            if(obj==null)
            {
                session.setAttribute("list",empL);
            }
            else
            {
                 empL =(ArrayList<Employee>)obj;
            }
            empL.add(e);
        %>
    <center>
        <table class="border2">
            <tr>
                <td colspan='2' align='center'>
                    <h1>Data Saved Successfully!!!</h1>
                </td>
            </tr>
            <tr>
                <td>
                    <a href='add.jsp' align="center">
                        <input type='button' value="Go to home 🏠" class="cell1" />
                    </a>
                </td> 
                <td> 
                    <a href='check.jsp' align="center">
                        <input type='button' value='Admin 🤖' class="cell1" />
                    </a>
                </td>
            </tr>
        </table>
    </center>
    </body>
</html>
