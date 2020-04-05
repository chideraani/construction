<%-- 
    Document   : home
    Created on : 19-Dec-2019, 15:33:15
    Author     : CHIDERA ANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Happy Builders</title>
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
            #t1{
                margin-top: -100px;
                font-family:brush script mt;
                font-size:50px;
                word-spacing:30px;
                letter-spacing: 2px;
                color: white;
            }
            #t2{
                margin-top:100px;
                font-size:60px;
                padding-bottom: 40px;
            }
            #pm{
                background-color: red;
                width:400px;
                height:350px;
                text-align:center;
                color:white;
                font-size:20px;
                border-radius:100px;
            }
            #title{
                font-size: 25px;
                font-style: italic;
            }
            #learn{
                text-decoration:none;
                color:indigo;
            }
            #learn:hover{
                text-decoration:underline;
                font-weight: bold;
            }
            footer{
                margin-top: 150px;
                padding-top:30px;
                 background:radial-gradient(#4EE2EC,gray);
                 height:100px;
            }
            #submit{
                masrgin-right:90px;
                padding:15px;
                width:100px;
                color: red;
                border-radius:5px;
                background-color:white;
            }
        </style>
        <script>
		var i=0;
		var images=[];
		var time=1500; //time is in nano seconds...3000ns=3s
		images[0]='image/back2.jpg';
		images[1]='image/b3.jpg';
		images[2]='image/b1.jpg';
		images[3]='image/b2.jpg';
                                            images[4]='image/b4.jpg';

		function changeImg(){
			document.show.src = images[i]; //shows source of images we've inserted

			if(i<images.length-1){
				i++;
			}
			else{
				i=0;
			}
			setTimeout("changeImg()",time); //function for the time variable
		}
		window.onload=changeImg; //executes the function as soon as the page loads
	</script>
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
        
        <img name="show" style="margin-top:30px;" src="image/back2.jpg" height="500" width="1330">
        <h1 id="t1">Connecting everyone who builds to everything they need...</h1>
    <center id="t2">Are You A...?</center>
    
    <div id="pm"> <img src="image/pm.png" width="150" height="150">
        <p><span id="title">Project Manager</span><br>Are you a professional in the field of project management?<br> 
            Do you have the responsibility of planning, procuring and executing a project?<br><a href="pm.jsp" id="learn">Learn More</a></p>
    </div>
    
    <div id="pm" style="margin-left:470px;margin-top:-350px;background-color:mediumpurple;"> <img src="image/us.png" width="150" height="150">
        <p><span id="title">Researcher/User</span><br>Are you interested in construction and need solutions on how to solve challenges in your company?
           
            <br> <br><a href="themes.jsp" id="learn">Learn More</a></p>
    </div>
    
    <div id="pm" style="margin-left:930px;margin-top:-350px; background-color:gold;"> <img src="image/ad.png" width="150" height="150">
        <p style="line-height:30px;"><span id="title">Administrator</span><br>Are you responsible for the upkeep, configuration, 
            and reliable operation of computer systems in your organisation?<br><a href="admin.jsp" id="learn">Learn More</a></p>
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
