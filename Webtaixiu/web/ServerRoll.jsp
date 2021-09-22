
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <body>

        <div>
            <h1>Roll</h1>
            <img class="img1" src="img/dice6.png">
            <img class="img2" src="img/dice6.png">
            <img class="img3" src="img/dice6.png">    
        </div>
        <input id="textMessage" type="text" />
        <input onclick="sendMessage()" value="Send Message" type="button" /> <br/><br/>
        <textarea id="textAreaMessage" rows="10" cols="50"></textarea>
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
    </body>
</html>
