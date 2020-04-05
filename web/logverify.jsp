<%-- 
    Document   : logverify
    Created on : 13-Jan-2020, 23:05:23
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
        <%
            String userStored="";
            String passStored="";
            String newitem="";
            Connection con;
            PreparedStatement st;
            ResultSet res;
            try{
                String usernameEntered=request.getParameter("uname").trim();
                String passwordEntered=request.getParameter("password").trim();
               // String regtypeEntered=request.getParameter("regtyp").trim();
                String sql= "SELECT * FROM `register` WHERE(uname ='"+usernameEntered+"' "+"AND password='"+passwordEntered+"')";
                boolean verify=false;
                con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost/construction","root","");
                st=con.prepareStatement(sql);
                res=st.executeQuery();
                boolean recordExists=res.absolute(1);
                
                if(recordExists==true)
                {
                    newitem=res.getString("item");
                    verify=true;
                }
                if(verify==true){
                    
                    if(newitem.equals("Project Manager")){
                        session.setAttribute("uname", usernameEntered);
                        response.sendRedirect("pminput.jsp");}
                    else if(newitem.equals("Administrator")){
                        session.setAttribute("uname", usernameEntered);
                        response.sendRedirect("admin.jsp");
                    }
                 }   
                else
                   out.println("Invalid login details");
                con.close();
            }
            catch(SQLException ex){
                out.write("" +ex.getMessage());
                //out.write(" I TOLD YOU");
            }
                     
        %>
    </body>
</html>
