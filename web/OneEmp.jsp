<%-- 
    Document   : OneEmp
    Created on : Jan 2, 2023, 10:43:41 PM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee details</title>
        <link rel="stylesheet" href='stylo.css'>
    </head>
    <body>
        <center>
            <form action="controllerEmp.jsp">
                <table class='border4'>
                    <tr>
                        <td>
                            <font size="5" face="sans-serif">Enter Employee Id of which you want to see the data :</font>
                        </td>
                    </tr>
                    <tr>
                        <td align='center' class="margin1">
                            <input type='number' name='e1' class="text1" required />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="Check" class="cell3" />
                            <input type="reset" value="Clear" class="cell3" />
                        </td>
                    </tr>
                </table>
            </form>
        </center>
    </body>
</html>
