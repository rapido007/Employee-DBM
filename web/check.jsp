<%-- 
    Document   : check
    Created on : Dec 25, 2022, 4:04:09 PM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check</title>
        <link rel="stylesheet" href="stylo.css">
    </head>
    <body>
    <center class="border2">
         <form action='controllerAdm.jsp'>
            <table class="border1">
                <tr>
                    <td colspan='2' align="center">
                        <h2>Admin Check</h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <font size="4px" face="sans-serif">Username:</font>
                    </td>
                    <td>
                        <input type='text' name ='f1' class="text1">
                    </td>
                </tr>
                <tr>
                    <td>
                        <font size="4px" face="sans-serif">Password:</font>
                    </td>
                    <td>
                        <input type='password' name ='f2' class="text1">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type='submit' value='Check' class="cell2" />
                        <input type='reset' value='Clear' class="cell2" />
                    </td>
                </tr>
            </table>
        </form>
    </center>
    </body>
</html>
