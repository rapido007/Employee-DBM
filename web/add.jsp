<%-- 
    Document   : add
    Created on : Dec 25, 2022, 10:45:03 AM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Details</title>
        <link rel="stylesheet" href="stylo.css">
    </head>
    <body>
    <center>
        <font size="15px" face="serif">Employee Database Management System</font>
        <form action="controller.jsp" method="post">
            <table class="border1">
                <tr>
                    <td colspan="2" align="center" height="35px">
                        <font size="5px" face="sans-serif">Employee Information </font>
                    </td>
                </tr>
                <tr><td colspan="2"><hr></td></tr>
                <tr>
                    <td>
                        <font size="4px" face="sans-serif">Employee ID:</font>
                    </td>
                    <td id="b1">
                        <input type="number" name="t1" class="text1" required />
                    </td>
                </tr>
                <tr>
                    <td>
                        <font size="4px" face="sans-serif">Employee Name:</font>
                    </td>
                    <td id="b2">
                        <input type="text" name="t2" class="text1" required />
                    </td>
                </tr>
                <tr>
                    <td>
                        <font size="4px" face="sans-serif">Employee Age:</font>
                    </td>
                    <td id="b3">
                        <input type="number" name="t3" class="text1" required />
                    </td>
                </tr>
                <tr>
                    <td>
                        <font size="4px" face="sans-serif">Base Salary:</font>
                    </td>
                    <td id="b4">
                        <input type="text" name="t4" class="text1" required />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" height="35px">
                        <input type="submit" value="SAVE" class="button1" />
                        <input type="reset" value="CLEAR" class="button1" />
                    </td>
                </tr>
            </table>
        </form>
        <br>
        <br>
        <br>
        <a href="check.jsp">
            <input type="button" value="Do you want to retrieve data?💻" class="cell1" />
        </a>
        <br>
        <br>
        <br>
        <a href="OneEmp.jsp">
            <input type="button" value="Generate Offer letter 📃" class="cell1" />
        </a>
    </center>
    </body>
</html>
