<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Web Tai Xiu</title>
        <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
        <meta name="author" content="Vincent Garreau" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/typicons.font@2.1.2/src/font/typicons.min.css">
    </head>
    <body id="particles-js"></body>
    <div class="animate__animated animate__backInDown">
        <div class="container">
            <span class="error animate__animated animate__tada" id="msg" style="display: none;"></span>
            <form name="form1" action="Login" method="POST" class="box" onsubmit="return checkStuff()">
                <h4>Game<span>TaiXiu</span></h4>
                <h5>Sign in to your account.</h5>
                <input type="text" name="username" placeholder="User Name" autocomplete="off">
                <i class="typcn typcn-eye" id="eye" style="top: 56.5%; left: 83%"></i>
                <input type="password" name="password" placeholder="Passsword" id="pwd" autocomplete="off">
                <a href="#" class="forgetpass">Forget Password?</a>
                <input type="submit" value="Sign in" class="btn1">
            </form>
            <a href="register.jsp" class="dnthave">Don't have an account? Sign up</a>
        </div> 
    </div> 



    <!-- scripts -->
    <script src="particles.js-master/particles.js"></script>
    <script src="particles.js-master/demo/js/app.js"></script>
    <script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>
    <script>
                var pwd = document.getElementById('pwd');
                var eye = document.getElementById('eye');

                eye.addEventListener('click', togglePass);

                function togglePass() {

                    eye.classList.toggle('active');

                    (pwd.type == 'password') ? pwd.type = 'text' : pwd.type = 'password';
                }

                // Form Validation

                function checkStuff() {
                    var username = document.form1.username;
                    var password = document.form1.password;
                    var msg = document.getElementById('msg');

                    if (username.value == "") {
                        msg.style.display = 'block';
                        msg.innerHTML = "Please enter your Username";
                        username.focus();
                        return false;
                    } else {
                        msg.innerHTML = "";
                    }

                    if (password.value == "") {
                        msg.innerHTML = "Please enter your Password";
                        password.focus();
                        return false;
                    } else {
                        msg.innerHTML = "";
                    }
                }
    </script>
</html>