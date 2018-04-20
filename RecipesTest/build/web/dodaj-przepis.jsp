<%-- 
    Document   : przepis
    Created on : 2018-04-15, 09:21:20
    Author     : WiktoriaWinkler
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Przepis</title>
    </head>
    <body>
        
    <center>
        
                <%
            HttpSession sesja = request.getSession(true);
            
String id_user= (String)sesja.getAttribute("id_user"); 

if(id_user!= null){ 
    %>
 
    
    <%@page import="java.sql.*,java.util.*"%>
<%
    try{
    
            String connectionURL = "jdbc:mysql://150.254.36.206:3306/wap18_p2?zeroDateTimeBehavior=convertToNull";
          
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            Connection conn = DriverManager.getConnection(connectionURL, "wap18_p2", "6hUtehed7ufrEqU_AYe2");

            Statement statement = conn.createStatement();
            
            String rec_name = request.getParameter("rec_name");   
        String rec_text = request.getParameter("rec_text");
        
      int user_id = Integer.parseInt(id_user);

           String command = "INSERT INTO recipe_easy (rec_name, rec_text, user_id) VALUES ('"+rec_name+"', '"+rec_text+"',"+user_id+")";
            
            
          statement.executeUpdate(command);

            
            %>
        

        <h1>Dodano! :)</h1>
        


<%
     response.sendRedirect("moje-przepisy.jsp"); 
    
    
   }
catch(Exception e){       
        out.println(e);
out.println("Nie poszlo :(");
   }
     
%>
    
    
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
