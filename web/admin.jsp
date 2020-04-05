<%-- 
    Document   : admin
    Created on : 12-Jan-2020, 16:27:34
    Author     : CHIDERA ANI
--%>
<%@page import="java.sql.*;"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <link rel="icon" type="image/png" href="image/build1.png">
        <style>
            #social{
                text-align: right;
                word-spacing:40px;
                margin-top:-45px;
            }
            #links{
                text-align: right;
                word-spacing: 60px;
                margin-top: -45px;
                margin-right:40px;
            }
            a{
                color:black;
                text-decoration: none;
            }
            a:hover{
                font-size:20px;
            }
            a:visited{
                color:black;
            }
            #nav{
                backgrounsd-color: #4EE2EC;
                background:radial-gradient(#4EE2EC,gray);
                background-attachment: fixed;
                height:80px;
                margin-top:-5px;
            }
            .input1{
                background-repeat:no-repeat;
	background-position:8px 9px;
	font-size:19px;
	color:tan;
	text-align: center;
	background-color:aliceblue;
	border: 3px solid grey;
	line-height:40px;
	margin-bottom:10px;
	width: 330px;
	border-radius:5px;
            }
            footer{
                margin-top: 150px;
                padding-top:30px;
                 background:radial-gradient(#4EE2EC,gray);
                 height:100px;
            }
        </style>
    </head>
    <body width="1200">
         <div id="nav">
            <a href="home.jsp"> <img src="image/build1.png" width="70" height="70"></a><p style="margin-left: 80px; margin-top:-65px;font-family:copperplate;font-size:25px;">Happy Builders</p>
            <div id="links">
                <a href="themes.jsp">Themes</a>
                <a href="register.jsp">Register</a>
                <a href="login.jsp">Login</a>
                <a href="contact.jsp">Contact</a>
            </div>
        </div>
        <br><br>
        <div class="login-card">
            <form action="home.jsp" method="POST">
                <h1>You are logged in as Admin <%=session.getAttribute("uname")%>.</h1><br><br>
            <%
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }

            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
        %>
        <p align="center" style="font-size:20px;"><b>Below are themes of challenges faced by project managers: </b></p>
        <table align="center" cellpadding="15" cellspacing="15" border=0>

            <%
                try {
                    connection = DriverManager.getConnection("jdbc:mysql://localhost/construction", "root", "");
                    statement = connection.createStatement();
                    String sql = "SELECT theme FROM `pminput` ";
                    resultSet = statement.executeQuery(sql);
                    while (resultSet.next()) {
            %>
            <tr style="color:blue; line-height: 7px;">
                <td><%=resultSet.getString("theme")%></td>
            </tr>
            <%
             }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            <%
                
            %> 
        </table><br><br>
         <%
            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }           
        %>
<!--        <h2 align="center"><font><strong>The challenges faced by Construction Managers</strong></font></h2>-->
        <table align="center" cellpadding="15" cellspacing="15" border=0>
            <tr>
            </tr>
            <tr bgcolor="#F7F7F7">
<!--                <td><b>theme</b></td>               -->
            </tr>            
            <%
                try {
                    connection = DriverManager.getConnection("jdbc:mysql://localhost/construction", "root", "");
                    statement = connection.createStatement();
                    String sql = "SELECT COUNT(theme) AS 'res' FROM pminput WHERE theme='Building bridges'";
                    resultSet = statement.executeQuery(sql);
                  while (resultSet.next()) {
            %>
            <tr style="background-color:gray;">

                <td><h4>The challenge with the highest frequency is Building bridges( <%=resultSet.getString("res")%>).</h4></td> 
            </tr>
            <%
                  }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>          
</table>   
            </form>  
        </div>

     <footer>
        <p>&copy;Happy Buildings Inc.</p>
   
         <div id="social">
            <a href="https://www.facebook.com"target="_blank"><img src="image/fb.png" width="25" height="25"></a>
            <a href="https://www.linkedin.com"target="_blank"><img src="image/in3.png" width="25" height="25"></a>
            <a href="https://www.instagram.com"target="_blank"><img src="image/ig2.png" width="25" height="25"></a>
           <a href="https://www.twitter.com"target="_blank"> <img src="image/twit6.png" width="25" height="25"></a>
        </div>
        
        <p style="margin-top:30px;">No 58, Plot B, Liberty Road, Alausa, Lagos.<br> info@hbuildings.com </p>
    </footer>
    </body>
</html>
