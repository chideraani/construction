<%-- 
    Document   : verify3
    Created on : 12-Jan-2020, 16:58:42
    Author     : CHIDERA ANI
--%>
<%@page import="java.sql.*;"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
        
        String fname,email,uname,gender,hear,comment;       %>
      <%
          fname = uname = email = gender = hear = comment  = "";
            fname = request.getParameter("fname");
            uname = request.getParameter("uname");
           email = request.getParameter("email");
            gender = request.getParameter("gender");
           hear = request.getParameter("hear");
            comment = request.getParameter("comment");
           
           
       if("".equals(fname)||"".equals(uname)||"".equals(email)||"".equals(gender)||"".equals(hear)||"".equals(comment)){
            out.write("Fill in empty fields!");  
         }
       else{
           String insert = "INSERT INTO contact VALUES ('"+fname+"','"+uname+"','"+email+"','"+gender+"','"+hear+"','"+comment+"') ";
            try{ 
               Class.forName("com.mysql.jdbc.Driver").newInstance();
               /*Connection con = DriverManager.getConnection("jdbc:mysql://localhost/construction","root","");*/
              Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/" + "construction","root","");
               Statement  st = (Statement) con.createStatement();
               
               st.executeUpdate(insert);
              //out.println("Succesfully inserted values");
               
             con.setAutoCommit(true);
             con.close();
             out.write("Thanks!We'll get back to you soon.");
            // response.sendRedirect("home.jsp");
   
           }
           catch(Exception e){
               e.printStackTrace();
           }
       }
          
      %>
    </body>
</html>
