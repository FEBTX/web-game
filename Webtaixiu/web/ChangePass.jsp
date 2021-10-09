<%-- 
    Document   : ChangePass
    Created on : 09-10-2021, 16:27:52
    Author     : gbuid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/typicons.font@2.1.2/src/font/typicons.min.css">
        <title>JSP Page</title>
    </head>
    <body id="particles-js"></body>
    <div class="animate__animated animate__backInDown">
        <div class="container" style="top: 75px;">
            <span class="error animate__animated animate__tada" id="msg"></span>
            <form name="form1" action="Login" method="POST" class="box">
                <h4>Game<span>TaiXiu</span></h4>
                <h5>Sign in to your account.</h5>
                <i class="typcn typcn-eye" id="eye" style="top: 43.5%"></i>
                <input type="password" name="newpassword" placeholder="New Passsword" id="pwd" autocomplete="off" required pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$" title="Password must be at least 8 characters, one uppercase letter, one lowercase letter and one number"> 
                <i class="typcn typcn-eye" id="reeye" style="top: 56.5%"></i>
                <input type="password" name="renewpassword" placeholder="Confirm new Password" id="repwd" autocomplete="off">
                <input type="submit" value="Sign in" class="btn1">
            </form>
            <a href="Change_Infomation.jsp" class="dnthave" style="left: 16%">You want to change personal infomation?</a>
        </div> 
    </div> 

    <script src="particles.js-master/particles.js"></script>
    <script src="particles.js-master/demo/js/app.js"></script>
    <script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>
    <script type="text/javascript">
        var pwd = document.getElementById('pwd');
        var eye = document.getElementById('eye');
        var repwd = document.getElementById('repwd');
        var reeye = document.getElementById('reeye');



        eye.addEventListener('click', togglePass);
        reeye.addEventListener('click', toggleRepass);

        function toggleRepass() {

            reeye.classList.toggle('active');

            (repwd.type == 'password') ? repwd.type = 'text' : repwd.type = 'password';
        }


        function togglePass() {

            eye.classList.toggle('active');

            (pwd.type == 'password') ? pwd.type = 'text' : pwd.type = 'password';
        }

        // Form Validation

        function checkStuff() {
            var password = document.form1.password;
            var repass = document.form1.repassword;
            var msg = document.getElementById('msg');


            if (password.value == repass.value) {
                msg.innerHTML = "";
            } else {
                msg.style.display = 'block';
                msg.innerHTML = "Password and Confirm Password doesn't match";
                password.focus();
                return false;
            }
            
        }
    </script>
</html>
