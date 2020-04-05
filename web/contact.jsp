<%-- 
    Document   : contact
    Created on : 26-Dec-2019, 21:13:44
    Author     : CHIDERA ANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
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
        
        <form style="padding-left: 10px;height: 550px;" action="verify3.jsp" method="POST">

	<p style="font-weight:bold;font-size: 35px; font-family:arial;color:red;text-shadow:2px 2px 1px black;">Contact Form...</p>

	<input style="margin-right: 100px;" class="input1" type="text" name="fname" required="required" placeholder="Enter your first name" size="30" />
	<input style="margin-right: 100px;" class="input1" type="text" name="uname" required="required" placeholder="Enter your last name" size="30" />
	<input style="margin-right: 100px;"  class="input1" type="email" name="email" required="required" placeholder="Enter your email" size="30" /><br/><br/>
	<p style="font-size: 25px;">Select your Gender:
	<input  type="radio" name="gender" value="male"/>Male
	<input  type="radio" name="gender" value="female"/>Female
        <input  type="radio" name="gender" value="others"/>Others</p><br>
	<p style="font-size:25px;"> How did you hear about us:
	<input  type="radio" name="hear" value="internet"/>Internet
	<input  type="radio" name="hear" value="friends"/>Friends
	<input  type="radio" name="hear" value="research"/>Research
	<input type="radio" name="hear" value="others"/>Others</p><br/>
	<textarea class="input1" name="comment" cols="130" rows="4" placeholder="Comments"></textarea><br/><br/><br/><br/>
	<input style="color:red; font-family: arial;font-weight: bold; font-size: 20px;background:radial-gradient(#4EE2EC,gray); text-shadow:2px 2px 1px black;" class="input1" type="submit" name="submit" value="Send us a message">
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
