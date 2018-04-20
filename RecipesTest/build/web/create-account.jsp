<%-- 
    Document   : create-account
    Created on : 2018-04-19, 22:07:27
    Author     : WiktoriaWinkler
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Creating account</title>
    </head>
    <body>
        
        
        
        <%
      Connection conn = null; 
    
    try {
            String connectionURL = "jdbc:mysql://150.254.36.206:3306/wap18_p2?zeroDateTimeBehavior=convertToNull";
          
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            conn = DriverManager.getConnection(connectionURL, "wap18_p2", "6hUtehed7ufrEqU_AYe2");
            
        }catch(Exception ex){
            out.println("Unable to connect to database"+ex);
        }   
    
    try{
        String username = request.getParameter("username");   
        String password = request.getParameter("password");
        String email = request.getParameter("email");   
        String picture = request.getParameter("picture");
        
        
        Statement statement = conn.createStatement();

           String command = "INSERT INTO recipe_user (login, email, user_password, user_picture_url) VALUES ('"+username+"', '"+email+"','"+password+"','"+picture+"')";
            
            
          statement.executeUpdate(command);       
        
          
          response.sendRedirect("new-account.jsp"); 
    }
    
    catch(Exception e){
     out.println(e);
    }
        
        %>
        
    </body>
</html>
