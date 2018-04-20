<%-- 
    Document   : dodajprzepis
    Created on : 2018-04-15, 09:03:35
    Author     : WiktoriaWinkler
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dodaj przepis</title>
    </head>
    <body>
    <center>
        
                <%
            HttpSession sesja = request.getSession(true);
            
String id_user= (String)sesja.getAttribute("id_user"); 

if(id_user != null){ 
    %>
    <div>
     <h1>DODAJ PRZEPIS :) </h1>

        <form name="dodaj_przepis" action="dodaj-przepis.jsp">
            <input type="hidden" name="id_us" value="1" />
             Tytuł:<br/>
            <input type="text" name="rec_name" value="" />
            
            <br/>
<br/>
            Sposób przygotowania:<br/>
           <textarea name="rec_text" rows="40" cols="80"></textarea><br/>
          
           
            <input type="submit" value="submit" name="submit" />
            
        </form>
    </div>
    <br/>
        <a href="main.jsp"><input type="submit" value="Return to main" name="main" /></a>
    
    
    <%
}else{
%>

<h1>Aby dodać nowy przepis musisz być zalogowany :)</h1>
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




<%
}
            %>
        
   
    </center>
    </body>
</html>
