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
    </head>
    <body id="particles-js"></body>
    <div class="animate__animated animate__backInDown">
        <div class="container" style="width: 700px; height: 50px; top: 150px" >
            <a href="#" id="btn_logout">Logout</a>
            <a href="#" id="btn_play">play</a>
        </div>
    </div>
    <div class="animate__animated animate__backInDown">
        <div class="container" style="width: 700px; height: 300px; top: 250px" >
            <%
                String role = session.getAttribute("role").toString();
                if (role.equals("1")) {
            %>
            <a href="/"><button className="bn632-hover bn20">Button</button></a>
            <input type="submit" name="btn_homepage" value="Play">     
            <input type="submit" name="btn_homepage" value="View History Room">
            <input type="submit" name="btn_homepage" value="View History User"> 
            <input type="submit" name="btn_homepage" value="View User"> 
            <%
            } else {
            %>
            <a href="/"><button className="bn632-hover bn20">Button</button></a>
            <input type="submit" name="btn_homepage" value="Play"> 
            <input type="submit" name="btn_homepage" value="Change Infomation"> 
            <input type="submit" name="btn_homepage" value="View History"> 
            <%
                }
            %>
        </div>
    </div>
    <script src="particles.js-master/particles.js"></script>
    <script src="particles.js-master/demo/js/app.js"></script>
</html>