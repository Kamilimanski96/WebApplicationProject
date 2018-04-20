package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class new_002daccount_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Witaj! To twoje nowe konto ;)</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

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
        
        
        PreparedStatement pst = conn.prepareStatement("Select user_id, login , user_password from recipeuser where login=? and user_password=?");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next()) {         
        
HttpSession sesja = request.getSession(true);
sesja.setAttribute("user_id", username);


        
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    <center>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <h1>Hi ");
 out.print(username); 
      out.write("! :) </h1>\n");
      out.write("        \n");
      out.write("        <h2>Twoje nowe konto! :D</h2>\n");
      out.write("        \n");
      out.write("        <a href=\"dodaj-przepis.jsp\"> <input type=\"submit\" value=\"Dodaj przepis\" name=\"dodaj_przepis\" /></a>\n");
      out.write("        \n");
      out.write("        <a href=\"moje-przepisy.jsp\"><input type=\"submit\" value=\"Moje przepisy\" name=\"moje_przepisy\" /></a>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </center>\n");
      out.write("        \n");
      out.write("        ");
 }
        else
{ 
      out.write("\n");
      out.write("\n");
      out.write("    <center>\n");
      out.write("<h1>Coś poszło nie tak :(</h1>\n");
      out.write("\n");
      out.write("<h2>\n");
      out.write("<a href=\"index.jsp\"> <input type=\"submit\" value=\"Spróbuj ponownie\" name=\"zaloguj_ponownie\" /></a>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</h2>   </center>\n");
      out.write("\n");

}         
   }catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }
     

      out.write("\n");
      out.write("      \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
