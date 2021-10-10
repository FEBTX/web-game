<%-- 
    Document   : PayGame
    Created on : Sep 23, 2021, 12:10:50 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/typicons.font@2.1.2/src/font/typicons.min.css">
        <title>JSP Page</title>
    </head>
    <body id="particles-js"></body>
    <div class="animate__animated animate__backInDown" style="position: absolute">
        <div class="navigation" >
            <a id="a1" class="button" href="ClientRoll.jsp">
                <img id="imgNav" src="img/exit.png">
                <div class="logout">Quit</div>
            </a>
        </div>
    </div>
    <div class="animate__animated animate__backInDown">
        <div class="container" style="width: 450px; height: 300px; top: 100px" >
            <div class="box">
                <h4>Game<span>TaiXiu</span></h4>
                <h5>Recharge your point!</h5>
                <form class="box" action="PayGame" method="POST">
                    <input type="text" name="point">
                    <input type="submit" value="Recharge" class="btn1" style="top: 70.8%;left: 69.8%; border-radius: 0px 5px 5px 0px; height: 43.5px; width: auto">
                </form>
            </div>
        </div>
    </div>

    <script src="particles.js-master/particles.js"></script>
    <script src="particles.js-master/demo/js/app.js"></script>
</html>
