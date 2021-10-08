<%-- 
    Document   : homepage
    Created on : Sep 10, 2021, 11:55:33 PM
    Author     : Admin
--%>

<%@page import="DTO.User"%>
<%@page import="DAO.DAOUser"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HomePage</title>
        <link type="text/css" rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/typicons.font@2.1.2/src/font/typicons.min.css">
    </head>
    <body id="particles-js"></body>
    <%
        String user_id = (String) session.getAttribute("Name").toString();
        DAOUser daouser = new DAOUser();
        User user = daouser.getUserbyUsername(user_id);
    %>
    <div class="animate__animated animate__backInDown" style="position: absolute">
        <div class="navigation" >
            <a id="a1" class="button" href="index.jsp">
                <img id="imgNav" src="img/exit.png">
                <div class="logout">LOGOUT</div>
            </a>
        </div>
    </div>
    <div class="animate__animated animate__backInDown">
        <div class="container" style="width: 450px; height: 500px; top: 150px" >
            <div class="box">
                <h4>Game<span>TaiXiu</span></h4>
                <h5 >Welcome back, <%=user.getUser_name()%></h5>
            </div>
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
            <div style="position: absolute; left: 13.5%; top: 40%">
                <a href="ClientRoll.jsp"><button class="button-64" role="button" style="top: 10%;"><span id="text">Play game</span></button></a>
                <a href="historyalluser.jsp"><button class="button-64" role="button" style="top: 10%"><span class="text">Change infomation</span></button></a>
                <a href="historyuser.jsp"><button class="button-64" role="button" style="top: 10%"><span class="text">View History</span></button></a>
            </div>
            <%
                }
            %>
        </div>
    </div>
    <script src="particles.js-master/particles.js"></script>
    <script src="particles.js-master/demo/js/app.js"></script>
</html>