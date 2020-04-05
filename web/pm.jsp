<%-- 
    Document   : pm
    Created on : 28-Dec-2019, 16:25:45
    Author     : CHIDERA ANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                background:radial-gradient(#4EE2EC,gray);
                background-attachment: fixed;
                height:80px;
                margin-top:-5px;
            }
            #pm{
                font-size: 25px;
                font-family: verdana;
                margin-top: 50px;
                background-image: url("image/back1.jpeg");
                background-repeat: no-repeat;
                background-size: cover;
                height: 600px;
             // overflow:scroll;
                text-align:justify;
              // padding: 100px auto 0px auto;
              padding-top: 100px;
            }
            form{
                font-size:20px;
            }
            .btn{
                width:100px;
                background:radial-gradient(#4EE2EC,gray);
                height: 30px; padding: auto;
                border-radius: 20px; font-size:20px;
            }
            footer{
                margin-top: 200px;
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
        
    <center>
<!--        <img style="margin-top: 70px;" src="image/back1.jpeg" height="800" width="1000">-->
<div id="pm"><p ><spam style="font-weight:bold;font-style:oblique;font-size:30px;">Project Managers...</spam><br><br> 
            A project manager is a person who has the overall responsibility for the successful 
            initiation, planning, design, execution, monitoring, controlling and closure of a project.
            The project manager must have a combination of skills including an ability to ask 
            penetrating questions, detect unstated assumptions and resolve conflicts, as well as more general management skills.
            Key among a project manager's duties is the recognition that risk directly impacts the likelihood of success and that this
            risk must be both formally and informally measured throughout the lifetime of a project.<br><br>
            <form action="register.jsp" method="POST" style="text-align:center;">
            <input type="submit" value="Register" name="register" class="btn">
            <p style="color:whiste;">Already registered?<a href="login.jsp">Login</a></p>
        </form></p>
        </div>
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
