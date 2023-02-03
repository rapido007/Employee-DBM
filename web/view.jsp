<%-- 
    Document   : view
    Created on : Dec 25, 2022, 11:08:49 AM
    Author     : pc
--%>

<%@page import="emp.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Details</title>
        <link rel="stylesheet" href="stylo.css">
    </head>
    <body>
        <table border>
            <tr>
                <td colspan="13" align="center" height="35px">
                    <h1>Employee Details</h1>
                </td>
            </tr>
            <tr>
                <td align='center' height="25px">Sr. No.</td>
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
                Object obj1 = session.getAttribute("list");
                if (obj1 != null) {
                    ArrayList<Employee> emp = (ArrayList<Employee>) obj1;
                    int l = emp.size();
                    for (int i = 0; i < l; i++) {
                        Employee e1 = emp.get(i);
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
                        out.print("<td align='center'>"+(i+1)+"</td>");
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
                    }
                }
            %>
        </table>
        <br>
        <br>
        <br>
    <center>
        <table>
            <tr>
                <td width='50%'>
                    <a href="add.jsp">
                        <input type="button" value="Go to home 🏠" class="cell1" />
                    </a> 
                </td>
                <td>
                    <a href="OneEmp.jsp">
                        <input type="button" value="Get details of a particular employee👨‍💼 " class="cell1" />
                    </a>
                </td>
            </tr>
        </table> 
    </center>
    </body>
</html>
