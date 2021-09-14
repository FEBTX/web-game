
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
        <h2>Bạn chọn : </h2>
        <h3></h3>
        <input id="bet" value="Tài" onclick="checkwin()" type="button">
        <input id="bet1" value="Xỉu" onclick="checkwin()" type="button">
        <script type="text/javascript">
            var total = 0;
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
                const a = message.data.split("");
                console.log(a);
                document.querySelector(".img1").setAttribute("src",
                        "img/dice" + a[0] + ".png");
                document.querySelector(".img2").setAttribute("src",
                        "img/dice" + a[1] + ".png");
                document.querySelector(".img3").setAttribute("src",
                        "img/dice" + a[2] + ".png");
                total = Number(a[0]) + Number(a[1]) + Number(a[2]);
                var Userbet = document.getElementById("bet").value;
                if (total < 10) {
                    document.querySelector("h1").innerHTML = "Xỉu";
                } else {
                    document.querySelector("h1").innerHTML = "Tài";
                }

            }
            function processClose(message) {
                textAreaMessage.value += "Server Disconnect... \n";
            }
            function processError(message) {
                textAreaMessage.value += "Error... " + message + " \n";
            }
            function  checkwin() {
                var checkbetTai = document.getElementById("bet").value;
                var checkbetXiu = document.getElementById("bet1").value;
                console.log(checkbetXiu);
                if (total < 10 && checkbetXiu == "Xỉu") {
                    document.querySelector("h2").innerHTML = "Bạn Thắng";
                } else {
                    document.querySelector("h2").innerHTML = "Bạn Thua";
                }

            }
        </script>
    </body>
</html>
