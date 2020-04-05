<%-- 
    Document   : details.jsp
    Created on : 11-Jan-2020, 09:07:51
    Author     : CHIDERA ANI
--%>
<%@page import="java.sql.*;"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
            <%
                
                Connection con;
            PreparedStatement st;
            ResultSet res;
            try{
                String themeEntered=request.getParameter("search").trim().toLowerCase();
                String sql= "SELECT * FROM `pminput` WHERE(theme ='"+themeEntered+"')";
                boolean verify=false;
                con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost/construction","root","");
                st=con.prepareStatement(sql);      
                res=st.executeQuery();
                while(res.next())
                    {
                        session.setAttribute("th",res.getString("theme"));
                        session.setAttribute("loc",res.getString("location"));
                        session.setAttribute("cha",res.getString("challenges"));
                        session.setAttribute("sol",res.getString("solve"));
                        session.setAttribute("res",res.getString("resources"));
                        session.setAttribute("em",res.getString("email"));
                        session.setAttribute("num",res.getString("number"));
                    }
                ;
                boolean recordExists=res.absolute(1);
                if(recordExists==true)
                {
                    verify=true;
                    response.sendRedirect("connect.jsp");
                }
                 else
                   out.println("No search result(s) found");
                con.close();
            }
            catch(SQLException ex){
                out.write("" +ex.getMessage());
        
            }
            
            %>
            
    </body>
</html>
