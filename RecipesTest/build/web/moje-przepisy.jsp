<%-- 
    Document   : moje-przepisy
    Created on : 2018-04-15, 09:19:16
    Author     : WiktoriaWinkler
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Moje przepisy</title>
    </head>
    <body>
    <center>
        
        <%
            HttpSession sesja = request.getSession(true);
            
String id_user= (String)sesja.getAttribute("id_user"); 

if(id_user != null){ 
    %>
    
    <h1>Twoje przepisy :)</h1>
    
    <%@page import="java.sql.*,java.util.*"%>
<%
    try{
    
            String connectionURL = "jdbc:mysql://150.254.36.206:3306/wap18_p2?zeroDateTimeBehavior=convertToNull";
          
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            Connection conn = DriverManager.getConnection(connectionURL, "wap18_p2", "6hUtehed7ufrEqU_AYe2");

            Statement statement = conn.createStatement();
           
          
            ResultSet resultset = statement.executeQuery("select * from recipe_easy where user_id =  "+id_user+" ");

          %>
            
                 <TABLE BORDER="1">
                 <TH>ID</TH>
                    <TH>Name</TH>
                    <TH>Text</TH>
                    <TH>User</TH>
                    
                    <%

           while(resultset.next()){ 
        %>
       
               <TR>
      
                    <TD> <%= resultset.getString(1) %> </TD>
                    <TD> <%= resultset.getString(2) %> </TD>
                    <TD> <%= resultset.getString(3) %> </TD>
                    <TD> <%= resultset.getString(4) %> </TD>
                </TR>
         
        <% 
           } 

%>     </TABLE> 
<br/>
     <a href="main.jsp"><input type="submit" value="Return to main" name="main" /></a>
    
    <%
        

        
   }
catch(Exception e){  
 out.println("id:"+id_user);
        out.println(e);
 
out.println("Nie poszlo :(");
   }
     
%>
    
    
    
    <%
}else{
%>

<h1>Aby zobaczyć swoje przepisy musisz być zalogowany :)</h1>
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
