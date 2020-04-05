<%-- 
    Document   : register
    Created on : 12-Jan-2020, 16:17:16
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
            body{
	
	background-image:url(image/1.jpg);
	background-repeat:no-repeat;
	background-size:cover;

                    }
.welcome{
	background-color:black;
	text-align: center;
	color:white;
	text-decoration: underline;
	padding:20px;
}
input{
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
	border-radius:10px;
}
input:focus{
	background-color:lightcyan;
	border:1px solid #b1e1e4;
}
.drop{
	background-position:8px 9px;
	font-size:19px;
	color:tan;
	text-align: center;
	background-color:aliceblue;
	border: 3px solid grey;
	line-height:40px;
	margin-bottom:10px;
                      height: 50px;
	width: 336px;
	border-radius:10px;
    
}
.drop:focus{
                      border-radius: 3px;
                      background-color:lightcyan;
	border:1px solid #b1e1e4;
}

.name{
	background-image: url(image/name.png);
}
.pass{
	background-image:url(image/password.png);
}
.mail{
    background-image:url(image/mail2_1.png);
}
.sub{
	width:150px;
	text-align:center;
	margin:0px auto 0px auto;
	font-size:25px;
	background-color:aqua;
	border-style: groove;
	border-width:2px;
	padding-left:10px;
	padding:1px;
	color: black;
	border-radius:5px;
}
.txt{
	text-align: center;
}
li{
	list-style-type:none;
	line-height:90px;
	font-style:italic;
	font-size:20px;
}
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
            footer{
                margin-top: 150px;
                padding-top:30px;
                 background:radial-gradient(#4EE2EC,gray);
                 height:100px;
            }
        </style>
    </head>
    <body>
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
                <h1>Register...</h1>
                <img style="margin-bottom: 20px;" src="image/user2.png" width="100" height="100">
                <form class="f1" action="regverify.jsp" method="POST ">
                        <input class="name" type="text" name="fname" placeholder="Full Name"><br>
                       <input class="name" type="text" name="uname" placeholder="Username"><br>
                       <input class="mail" type="email" name="email" placeholder="Email"><br>
                        <select class="drop" name='item'>
                           <option value='select' selected="selected">Select...</option>
                           <option>Project Manager</option>
                           <option>Administrator</option>
                       </select><br>
                       <input  class="pass" type="password" name="password" placeholder="Password"><br>
                       <input  class="pass" type="password" name="rpassword" placeholder="Password Repeat"><br><br>	
	<input class="sub" type="submit" value="REGISTER" name="buttonname" >
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
