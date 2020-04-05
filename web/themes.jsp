<%-- 
    Document   : themes
    Created on : 06-Jan-2020, 07:32:09
    Author     : CHIDERA ANI
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*;"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Themes</title>
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
            input{
	background-position:8px 9px;
	font-size:19px;
	color:tan;
	text-align: center;
	background-color:aliceblue;
	border: 3px solid grey;
	line-height:40px;
	margin-bottom:10px;
                      height: 50px;
	width: 330px;
	border-radius:10px;
    
}
input:focus{
                      border-radius: 3px;
                      background-color:lightcyan;
	border:1px solid #b1e1e4;
}
.btn{
                width:100px;
                background:radial-gradient(#4EE2EC,gray);
                height: 30px; padding: auto;
               // border-radius: 20px; font-size:20px;
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
        </div><br><br><br>
    <center style="margin-top:200px;">
        <h1>Hello <%=session.getAttribute("uname")%>,</h1>
        <form action="details.jsp" method="POST">
            <input type="text" size="30" name="search" placeholder="Search for themes"><br><br>
            <button type="search" class="btn">Search </button>
        </form>
    </center>
        
       
        
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
