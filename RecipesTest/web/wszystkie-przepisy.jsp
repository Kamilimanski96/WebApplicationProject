<%-- 
    Document   : wszystkie-przepisy
    Created on : 2018-04-19, 21:03:32
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
            <center>
        
        <%
            HttpSession sesja = request.getSession(true);
            
String id_user= (String)sesja.getAttribute("id_user"); 

    %>
    
    <h1>WSZYSTKIE PRZEPISY :)</h1>
    
    <%@page import="java.sql.*,java.util.*"%>
<%
    try{
    
            String connectionURL = "jdbc:mysql://150.254.36.206:3306/wap18_p2?zeroDateTimeBehavior=convertToNull";
          
            Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            Connection conn = DriverManager.getConnection(connectionURL, "wap18_p2", "6hUtehed7ufrEqU_AYe2");

            Statement statement = conn.createStatement();
            
            ResultSet resultset = statement.executeQuery("select r.rec_name, r.rec_text, u.login from recipe_easy as r inner join recipe_user as u on r.user_id = u.user_id;");

            %>
            
                 <TABLE BORDER="1">
              
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
          
                  
         
        <% 
           } 

%>     </TABLE>  
    <br/>
    <a href="main.jsp"><input type="submit" value="Return to main" name="main" /></a>
    
    <%
        

        
   }
catch(Exception e){       
        out.println(e);
out.println("Nie poszlo :(");
   }
     
%>
    


    
</div>
</div>





        
        

    </center>
    </body>
</html>
