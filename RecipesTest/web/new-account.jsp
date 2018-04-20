<%-- 
    Document   : new-account
    Created on : 2018-04-19, 19:42:37
    Author     : WiktoriaWinkler
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Witaj! To twoje nowe konto ;)</title>
    </head>
    <body>

    <center>
    
        <h1>Twoje konto zostało utworzone! Możesz się teraz zalogować :) </h1>
     <div style="width:600px;">      
<div style="float:left;">
    <h2>Log in:</h2>
        <form action="login.jsp">
            Username:
            <input type="text" name="username" value="" /><br/><br/>
            Password:
            <input type="text" name="password" value="" /><br/><br/>
            
            <input type="submit" value="Log in" name="submit"/>
        </form>
</div>

<div style="float:right;">
    <h2>New account:</h2>
    
  
    <form action="new-account.jsp" style="text-align:left;">
            Username:
            <input type="text" name="username" value="" /><br/><br/>
            Email:
            <input type="text" name="email" value="" /><br/><br/>
            Password:
            <input type="text" name="password" value="" /><br/><br/>
            Picture:
            <input type="text" name="picture" value="" /><br/><br/>

            <input type="submit" value="Create" name="submit"/>
        </form>
 
    
    
</div>
</div>
    

    
    </center>
        
    </body>
</html>
