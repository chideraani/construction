<%-- 
    Document   : mult
    Created on : 06-Feb-2020, 16:55:33
    Author     : CHIDERA ANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
        private static final int LAST_LEVEL = 12;
        %>
        <p>This shows the multiplication table of 8</p>
        <%
            for(int i=1; i<LAST_LEVEL;i++){
                System.out.println("8 x "+i+" = "+ 8*i);
            }
        %>
    </body>
</html>
