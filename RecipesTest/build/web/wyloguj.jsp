<%-- 
    Document   : wyloguj
    Created on : 2018-04-19, 13:21:12
    Author     : WiktoriaWinkler
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Do zobaczenia!</h1>
        <br/>
            <a href="index.jsp"><input type="submit" value="Login again" name="main" /></a>
        
        <%
            HttpSession sesja = request.getSession(true);
            sesja.removeAttribute("id_user");
        %>
    </body>
</html>
