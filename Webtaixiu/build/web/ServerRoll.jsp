
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    </head>
    <body id="particles-js"></body>
    <div class="animate__animated animate__backInDown" style="position: absolute">
        <div class="navigation">
            <a id="a1" class="button" href="homepage.jsp" >
                <img id="imgNav" src="img/exit.png">
                <div class="logout" href="homepage.jsp">Quit</div>
            </a>
        </div>
    </div>
    <div class="animate__animated animate__backInDown">
        <div class="container box" style="top: 50px; height: 550px">
            <div>
                <h4 style="margin-top: 50px">Game<span>TaiXiu</span></h4>
                <h5 style="margin-bottom: 30px">Sign in to your account.</h5>
                <img class="img1" src="img/dice6.png">
                <img class="img2" src="img/dice6.png">
                <img class="img3" src="img/dice6.png">    
            </div>
            <div style="margin-top: 20px">
                <button class="button-64" role="button" onclick="sendMessage()" style="margin-left: 53px"><span id="text">Start Server</span></button>
                <textarea id="textAreaMessage" rows="10" cols="50" style="border: 1px solid #79A6FE;display: block;margin: 20px auto;background: #262e49;border: 0;border-radius: 5px;padding: 14px 10px;width: 90%;outline: none;color: #d6d6d6;-webkit-transition: all .2s ease-out;-moz-transition: all .2s ease-out;-ms-transition: all .2s ease-out;-o-transition: all .2s ease-out;transition: all .2s ease-out;" readonly></textarea>
            </div>    
        </div>
    </div>

    <script src="particles.js-master/particles.js"></script>
    <script src="particles.js-master/demo/js/app.js"></script>
    <script type="text/javascript">
                    var websocket = new WebSocket("ws://localhost:8080/Webtaixiu/Playgame");
                    websocket.onopen = function (message) {
                        processOpen(message);
                    };
                    websocket.onmessage = function (message) {
                        processMessage(message);
                    };
                    websocket.onclose = function (message) {
                        processClose(message);
                    };
                    websocket.onerror = function (message) {
                        processError(message);
                    };

                    function processOpen(message) {
                        textAreaMessage.value += "Server connect... \n";
                    }
                    function processMessage(message) {
                        console.log(message);
                        textAreaMessage.value += message.data + " \n";
                    }
                    function processClose(message) {
                        textAreaMessage.value += "Server Disconnect... \n";
                    }
                    function processError(message) {
                        textAreaMessage.value += "Error... " + message + " \n";
                    }

                    function sendMessage() {
                        if (typeof websocket != 'undefined' && websocket.readyState == WebSocket.OPEN) {
                            websocket.send(textMessage.value);
                            textMessage.value = "";
                        }
                    }
                    function rollTheDice() {
                        setTimeout(function () {
                            var dice1 = Math.floor(Math.random() * 6) + 1;
                            var dice2 = Math.floor(Math.random() * 6) + 1;
                            var dice3 = Math.floor(Math.random() * 6) + 1;
                            document.querySelector(".img1").setAttribute("src",
                                    "img/dice" + dice1 + ".png");

                            document.querySelector(".img2").setAttribute("src",
                                    "img/dice" + dice2 + ".png");
                            document.querySelector(".img3").setAttribute("src",
                                    "img/dice" + dice3 + ".png");
                            if (dice1 + dice2 + dice3 < 10) {
                                document.querySelector("h1").innerHTML = "Xỉu";
                                document.getElementById("textMessage").value = dice1 + "" + dice2 + "" + dice3;
                                sendMessage();
                            } else {
                                document.querySelector("h1").innerHTML = "Tài";
                                document.getElementById("textMessage").value = dice1 + "" + dice2 + "" + dice3;
                                sendMessage();
                            }
                        }, 10);

                    }
                    function delay(ms) {
                        return new Promise(resolve => {
                            setTimeout(resolve, ms);
                        });
                    }

// function that will print the numbers in correct order, with delays
                    async function Roll(num) {
                        for (let i = 1; i <= num; i++) {
                            await delay(20000); // wait 
                            rollTheDice();
                        }
                    }
                    Roll(999);

    </script>
</html>
