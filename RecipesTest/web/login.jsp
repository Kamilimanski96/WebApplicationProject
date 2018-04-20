<%-- 
    Document   : login
    Created on : 2018-04-19, 21:40:46
    Author     : WiktoriaWinkler
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        
        
        PreparedStatement pst = conn.prepareStatement("Select login, user_password from recipe_user where login=? and user_password=?;");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next()) {         
        
HttpSession sesja = request.getSession(true);

ResultSet resultSet = pst.executeQuery("select user_id from recipe_user where login = '"+username+"'");

String id_user ="";
if (resultSet.next()) { 
id_user= resultSet.getString(1); 
}

sesja.setAttribute("id_user", id_user);

   response.sendRedirect("main.jsp"); 
        }
        else{
            %>
    <center>
            <h1>Niepoprawny login lub hasło.</h1>
            
            <h2>Spróbuj ponownie lub załóż nowe konto</h2>
            
             <a href="index.jsp"><input type="submit" value="Powrót" name="main" /></a>
            
    </center>
            
            <%
            
            
        }
    }
catch(Exception e){
        out.println(e);
        }
        %>
        
        
        
    </body>
</html>
