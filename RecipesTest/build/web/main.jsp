<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page import ="java.sql.*" %>
<%-- 
    Document   : profile
    Created on : 2018-04-14, 22:23:24
    Author     : WiktoriaWinkler
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
    </head>
    <body>
        
        
<%        
 HttpSession sesja = request.getSession(true);
            
String id_user= (String)sesja.getAttribute("id_user"); 

if(id_user != null){ 

  

        %>
        
        
        
    <center>
        
        
        <h1>Hi! :) </h1>
        
        <a href="nowy-przepis.jsp"> <input type="submit" value="Dodaj przepis" name="dodaj_przepis" /></a>
        
        <a href="moje-przepisy.jsp"><input type="submit" value="Moje przepisy" name="moje_przepisy" /></a>
        
         <a href="wszystkie-przepisy.jsp"><input type="submit" value="Wszystkie przepisy" name="wszystkie_przepisy" /></a>
  
     <a href="wyloguj.jsp"><input type="submit" value="Wyloguj" name="wyloguj" /></a>
     
    </center>
        
        <% }
        else
{ %>

    <center>

    
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
    
    <% } %>
    

        
         
    </body>
</html>
