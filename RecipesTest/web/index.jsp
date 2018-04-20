
<%-- 
    Document   : login
    Created on : 2018-04-14, 22:19:48
    Author     : WiktoriaWinkler
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>

        
         <%
            HttpSession sesja = request.getSession(true);
            
String id_user= (String)sesja.getAttribute("id_user"); 

if(id_user != null){ 
    %>
    
    <h1> Jesteś zalogowany :)</h1>
    
    
    
    <%
        
        
        response.sendRedirect("main.jsp"); 
        
        
}else{
%>


    <center>

<h1>Hi!</h1>
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
    
  
    <form action="create-account.jsp" style="text-align:left;">
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
<%
}
            %>
        
    </center
        
    </body>
</html>
