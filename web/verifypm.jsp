<%-- 
    Document   : verifypm
    Created on : 03-Jan-2020, 11:27:42
    Author     : CHIDERA ANI
--%>

<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
       <%!
        
        String theme,location,challenges,solve,resources,email,number;       %>
      <%
          theme = location = email = challenges = solve = resources = number = "";
            theme = request.getParameter("theme");
            location = request.getParameter("location");
           challenges = request.getParameter("challenges");
            solve = request.getParameter("solve");
           resources = request.getParameter("resources");
            email = request.getParameter("email");
            number = request.getParameter("number");
           
       if(theme.equals("")||location.equals("")||challenges.equals("")||solve.equals("")||resources.equals("")||email.equals("")||number.equals("")){
            out.write("Fill in empty fields!");  
         }
       else{
           String insert = "INSERT INTO pminput VALUES ('"+theme+"','"+location+"','"+challenges+"','"+solve+"','"+resources+"','"+email+"','"+number+"') ";
            try{ 
               Class.forName("com.mysql.jdbc.Driver").newInstance();
               /*Connection con = DriverManager.getConnection("jdbc:mysql://localhost/construction","root","");*/
              Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/" + "construction","root","");
               Statement  st = (Statement) con.createStatement();
               
               st.executeUpdate(insert);
              //out.println("Succesfully inserted values");
               
             con.setAutoCommit(true);
             con.close();
             response.sendRedirect("home.jsp");
   
           }
           catch(Exception e){
               e.printStackTrace();
           }
       }
          
      %>
    </body>
</html>
