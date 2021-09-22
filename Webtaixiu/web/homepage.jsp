<%-- 
    Document   : homepage
    Created on : Sep 10, 2021, 11:55:33 PM
    Author     : Admin
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HomePage</title>
        <link rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/typicons.font@2.1.2/src/font/typicons.min.css">
    </head>
    <body id="particles-js"></body>
    <div class="animate__animated animate__backInDown">
        <div class="navigation">
            <a class="button" href="index.jsp">
                <img src="https://pbs.twimg.com/profile_images/378800000639740507/fc0aaad744734cd1dbc8aeb3d51f8729_400x400.jpeg">
                <div class="logout">LOGOUT</div>
            </a>
        </div>
    </div>
    <form action="Playgame" method="POST">
    <div class="animate__animated animate__backInDown">
        <div class="container" style="width: 700px; height: 50px; top: 100px;" >    
        </div>
    </div>
    <div class="animate__animated animate__backInDown">
        <div class="container" style="width: 700px; height: 300px; top: 200px" >
            <%
                String role = session.getAttribute("role").toString();
                if (role.equals("1")) {
            %>
            <a href="ServerRoll.jsp"><button class="bn632-hover bn20">Start Game</button></a>
            <a href="historymanager.jsp"><button class="bn632-hover bn20">View History Room</button></a>
            <a href="historyalluser.jsp"><button class="bn632-hover bn20">View History User</button></a>
            <a href="usermanger.jsp"><button class="bn632-hover bn20">View User</button></a>
            <%
            } else {
            %>
            <a href="ClientRoll.jsp"><button class="bn632-hover bn20">Play Game</button></a>
            <a href="historyalluser.jsp"><button class="bn632-hover bn20">Change Infomation</button></a>
            <a href="historyuser.jsp"><button class="bn632-hover bn20">View History</button></a>
            <%
                }
            %>
        </div>
    </div>
        </form>
    <script src="particles.js-master/particles.js"></script>
    <script src="particles.js-master/demo/js/app.js"></script>
</html>