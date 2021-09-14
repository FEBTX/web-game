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
    </head>
    <style>
        @font-face {
            font-family: "typicons";
            src: url("typicons.eot?b99ba6e7256a27d29176cef7fc322738?#iefix") format("embedded-opentype"),
                url("typicons.woff2?b99ba6e7256a27d29176cef7fc322738") format("woff2"),
                url("typicons.woff?b99ba6e7256a27d29176cef7fc322738") format("woff"),
                url("typicons.ttf?b99ba6e7256a27d29176cef7fc322738") format("truetype"),
                url("typicons.svg?b99ba6e7256a27d29176cef7fc322738#typicons") format("svg");
        }
    </style>
    <body id="particles-js"></body>
    <div class="animate__animated animate__backInUp">
        <div class="container" style="height: 850px;">
            <span class="error animate__animated animate__tada" id="msg"></span>
            <form name="form1" action="Login" method="POST" class="box" onsubmit="return checkStuff()">
                <h4>Game<span>TaiXiu</span></h4>
                <h5>Create your account.</h5>
                <input type="text" name="username" placeholder="User Name" autocomplete="off">
                <input type="text" name="fullname" placeholder="Full Name" autocomplete="off">
                <input type="text" name="email" placeholder="Email" autocomplete="off">
                <input type="text" name="address" placeholder="Address" autocomplete="off">
                <input type="text" name="phone" placeholder="Phone Number" autocomplete="off">
                <i class="typcn typcn-eye" id="eye"></i>
                <input type="password" name="password" placeholder="Passsword" id="pwd" autocomplete="off">
                <i class="typcn typcn-eye" id="reeye"></i>
                <input type="password" name="repassword" placeholder="Confirm Passsword" id="repwd" autocomplete="off">
                <input type="submit" value="Create Account" class="btn1">
            </form>
            <a href=index.jsp class="dnthave">You have an account? Sign in</a>
        </div> 
    </div> 



    <!-- scripts -->
    <script src="particles.js-master/particles.js"></script>
    <script src="particles.js-master/demo/js/app.js"></script>
    <script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>
    <script>
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
                    var username = document.form1.username;
                    var fullname = document.form1.fullname;
                    var email = document.form1.address;
                    var phone = document.form1.phone;
                    var password = document.form1.password;
                    var msg = document.getElementById('msg');

                    if (username.value == "") {
                        msg.style.display = 'block';
                        msg.innerHTML = "Please enter your username";
                        username.focus();
                        return false;
                    } else {
                        msg.innerHTML = "";
                    }
                    if (password.value == "") {
                        msg.innerHTML = "Please enter your password";
                        password.focus();
                        return false;
                    } else {
                        msg.innerHTML = "";
                    }
                    if (password.value == "") {
                        msg.innerHTML = "Please enter your password";
                        password.focus();
                        return false;
                    } else {
                        msg.innerHTML = "";
                    }
                }
    </script>
</html>