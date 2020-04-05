<%-- 
    Document   : connect
    Created on : 12-Jan-2020, 15:50:32
    Author     : CHIDERA ANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Result</title>
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
        </div><br><br><br>
        <div class="myform">
             <form name="TheForm" method="POST" >
            <center><h1>Search Result</h1></center>
            <h1 style="font-size:50px; ">Hello <%=session.getAttribute("uname")%>,</h1><br><br>
            <table style="font-size:20px;">
                <tr>
                       <td>Project Theme: </td>
                       <td>   <%=session.getAttribute("th")%></td>
                </tr>
                <tr>
                        <td>Project Location: </td>
                        <td> <%=session.getAttribute("loc")%></td>
                </tr>
                <tr>
                    <td>Challenges Faced: </td>
                        <td> <%=session.getAttribute("cha")%></td>
                </tr>
                <tr>
                    <td>Solutions: </td>
                        <td> <%=session.getAttribute("sol")%></td>
                </tr>
                <tr>
                  <td>Resources: </td>
                        <td> <%=session.getAttribute("res")%></td>
                </tr>
                <tr>
                    <td>Email: </td>
                        <td> <%=session.getAttribute("em")%></td>
                </tr>
                <tr>
                    <td>Phone Number </td>
                        <td> <%=session.getAttribute("num")%></td>
                </tr>
            </table>
                    <br><br>
                    <p style="font-size:20px;">These are contact details of project managers who have encountered similar issues.</p>
            
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
