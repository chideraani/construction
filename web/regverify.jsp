<%-- 
    Document   : regverify
    Created on : 13-Jan-2020, 14:18:16
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
        
        String fname,uname,email,item,password,rpassword;       %>
      <%
          fname = email = uname = item = password = rpassword = "";
            fname = request.getParameter("fname");
            uname = request.getParameter("uname");
           email = request.getParameter("email");
           item = request.getParameter("item");
            password = request.getParameter("password");
           rpassword = request.getParameter("rpassword");
           
           
       if("".equals(fname)||"".equals(uname)||"".equals(email)|| "".equals(password)||"".equals(rpassword) ){
            out.write("Fill in empty fields!");  
         }
       else{
           
            try{ 
               Class.forName("com.mysql.jdbc.Driver").newInstance();
               /*Connection con = DriverManager.getConnection("jdbc:mysql://localhost/construction","root","");*/
              Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/" + "construction","root","");
              Statement  st = (Statement) con.createStatement();
              String insert = "INSERT INTO register VALUES ('" + fname + "','" + uname + "','" + email + "','" + item +  "','" + password +  "') ";
             String insert2 = "INSERT INTO login VALUES ('" + uname + "','" + password +  "') ";
               
               st.executeUpdate(insert);
                st.executeUpdate(insert2);
              //out.println("Succesfully inserted values");
               
             con.setAutoCommit(true);
             con.close();
             response.sendRedirect("login.jsp");
   
           }
           catch(Exception e){
               e.printStackTrace();
           }
       }
          
      %>
    </body>
</html>
