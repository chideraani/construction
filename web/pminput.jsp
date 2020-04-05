<%-- 
    Document   : pminput
    Created on : 28-Dec-2019, 16:57:03
    Author     : CHIDERA ANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Project Manager Details</title>
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
            .sub{
	width:150px;
	text-align:center;
	margin-left:90px;
	font-size:25px;
	background-color:aqua;
	border-style: groove;
	border-width:2px;
	padding-left:10px;
	padding:1px;
	color: black;
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
        
        <h2>Kindly input the details about your construction project...</h2>
        
        <form action="verifypm.jsp" method="post">
            
            <p>Theme of the project</p>
            <input type="text" name="theme" size="50">
            
             <p>Location?</p>
            <input type="text" name="location" size="50">
            
             <p>Challenges Encountered?</p>
            <input type="text" name="challenges" size="50">
            
             <p>How did you solve it?</p>
            <input type="text" name="solve" size="50">
            
             <p>Which resources did you use?</p>
            <input type="text" name="resources" size="50">
            
             <p>Email</p>
            <input type="email" name="email" size="50">
            
             <p>Phone Number</p>
             <input type="tel" name="number" size="50"><br><br><br>
            
             <input class="sub" type="submit" value="Upload" name="upload">
            
        </form>
        
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
