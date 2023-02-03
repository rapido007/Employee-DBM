<%-- 
    Document   : empView
    Created on : Jan 2, 2023, 11:24:57 PM
    Author     : pc
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="emp.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="stylo.css">
    </head>
    <body>
    <center>
        <h1>Welcome</h1>
        <h2>Below are the details of the employee: </h2>
        <table border>
            <tr>
                <td align='center' height="25px">Employee Id</td>
                <td align='center' height="25px">Employee Name</td>
                <td align='center' height="25px">Employee age</td>
                <td align='center' height="25px">Employee base salary</td>
                <td align='center' height="25px">Employee's HRA(10%)</td>
                <td align='center' height="25px">Employee's DA(20%)</td>
                <td align='center' height="25px">Employee's Gross Salary</td>
                <td align='center' height="25px">CTC</td>
                <td align='center' height="25px">Tax <b>(in %)</b></td>
                <td align='center' height="25px">After Tax deduction<b>(CTC)</b></td>
                <td align='center' height="25px">After Tax deduction<b>(In-Hand)</b></td>
                <td align='center' height="25px">Net difference<b>(per Month)</b></td>
            </tr>
        <%
            Object obj = session.getAttribute("empd");
            Employee e1 = (Employee) obj;
                        int id = e1.getEmpid();
                        String name = e1.getName();
                        int age = e1.getAge();
                        double bs = e1.getBs();
                        double h = e1.findHRA();
                        double d = e1.findDA();
                        double g = e1.findGS();
                        double c = e1.findCTC();
                        int t = e1.findTaxPayable();
                        double ac = e1.findAfterCTC();
                        double in = e1.findInHand();
                        double net = e1.netDiff();
                        out.print("<tr>");
                        out.print("<td align='center'>" + id + "</td>");
                        out.print("<td align='center'>" + name + "</td>");
                        out.print("<td align='center'>" + age + "</td>");
                        out.print("<td align='center'>" + bs + "</td>");
                        out.print("<td align='center'>" + h + "</td>");
                        out.print("<td align='center'>" + d + "</td>");
                        out.print("<td align='center'>" + g + "</td>");
                        out.print("<td align='center'>" + c + "</td>");
                        out.print("<td align='center'>" + t + "</td>");
                        out.print("<td align='center'>" + ac + "</td>");
                        out.print("<td align='center'>" + in + "</td>");
                        out.print("<td align='center'>" + net + "</td>");
                        out.print("</tr>");
        %>
        </table>
        <br>
        <br>
        <br>
        <table class="border1">
            <tr>
                <td>
                    <span class="cell4">
                        Do you want to generate offer letter for this Employee?👨‍💼
                    </span>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <a href="OfferLetter.jsp">
                        <input type="button" value="Yes" class="cell3" />
                    </a>
                    <a href="add.jsp">
                        <input type="button" value="No" class="cell3" />
                    </a>
                </td>
            </tr>
        </table>
    </center>
    </body>
</html>
