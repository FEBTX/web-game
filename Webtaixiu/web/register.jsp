<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Web Tai Xiu</title>
        <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
        <meta name="author" content="Vincent Garreau" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link type="text/css" rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/typicons.font@2.1.2/src/font/typicons.min.css">
    </head>
    <body id="particles-js"></body>
    <div class="animate__animated animate__backInUp">
        <div class="container" style="height: 680px; top: 25px;">
            <span class="error animate__animated animate__tada" id="msg" style="top: 23%"></span>
            <form name="form1" action="Register" method="POST" class="box" onsubmit="return checkStuff()">
                <h4>Game<span>TaiXiu</span></h4>
                <h5>Create your account.</h5>
                <input type="text" name="username" placeholder="User Name" autocomplete="off" required title="Username must be 8 character or more" pattern="([a-zA-Z0-9]){7,}\w+">
                <input type="text" name="fullname" placeholder="Full Name" autocomplete="off" required title="Fullname is required">
                <input type="text" name="phone" placeholder="Phone Number" autocomplete="off" required pattern="(0[3|5|7|8|9])+([0-9]{8})|(84)+([0-9]{9})\b" title="Phone number must be valid">
                <i class="typcn typcn-eye" id="eye" style="top: 60.25%"></i>
                <input type="password" name="password" placeholder="Passsword" id="pwd" autocomplete="off" required pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$" title="Password must be at least 8 characters, one uppercase letter, one lowercase letter and one number">
                <i class="typcn typcn-eye" id="reeye" style="top: 69.5%"></i>
                <input type="password" name="repassword" placeholder="Confirm Passsword" id="repwd" autocomplete="off" required>
                <input type="submit" value="Create Account" class="btn1">
            </form>
            <a href=index.jsp class="dnthave">You have an account? Sign in</a>
        </div> 
    </div> 



    <!-- scripts -->
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