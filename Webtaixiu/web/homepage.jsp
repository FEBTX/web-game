<%-- 
    Document   : homepage
    Created on : Sep 10, 2021, 11:55:33 PM
    Author     : Admin
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<<<<<<< HEAD
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String role = session.getAttribute("role").toString();
            if (role.equals("1")) {
        %>
        <a href="ServerRoll.jsp">Start Server</a>
        <a href="historymanager.jsp">History Room</a>
        <a href="usermanger.jsp">User Manger</a>
        <%
        } else {
        %>
        <a href="ClientRoll.jsp">play</a>
        <%
            }
        %>
=======
        <title>HomePage</title>
        <link rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    </head>

    <body id="particles-js"></body>

    <div class="animate__animated animate__backInDown">
        <div class="container" style="width: 700px; height: 50px; top: 150px" >
            <a href="#" id="btn_logout">Logout</a>
        </div>
    </div>
    <div class="animate__animated animate__backInDown">
        <div class="container" style="width: 700px; height: 300px; top: 250px" >
            <div class="">
                <%
                    String role = session.getAttribute("role").toString();
                    if (role.equals("1")) {
                %>
                <a href="ServerRoll.jsp" id="btn_play" >play</a>
                <%
                } else {
                %>
                <a href="ClientRoll.jsp" id="btn_play">Play</a>
                <a href="#" id="btn_changeInfomation">Change Infomation</a>
                <a href="#" id="btn_viewhistory">View History</a>
                <%
                    }
                %>
            </div>
        </div>
    </div>
>>>>>>> fb543d89ea1618d41412235f1ad0a353760fffda

    </body>
</html>
