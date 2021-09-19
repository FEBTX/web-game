
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <body>
        <%
        String user_id = (String) session.getAttribute("Name").toString();
        %>
        <input id="id_user" value="<%=user_id%>" readonly>
        <div>
            <h1>Roll</h1>
            <img class="img1" src="img/dice6.png">
            <img class="img2" src="img/dice6.png">
            <img class="img3" src="img/dice6.png">
        </div>
        <h2>Bạn chọn: </h2>
        <h3></h3>
        <input id="xubet">
        <input id="tai" value="Tài" onclick="checkwinTai()" type="button">
        <input id="xiu" value="Xỉu" onclick="checkwinXiu()" type="button">
        <script type="text/javascript">
            var total = 0;
            var bet = 0;
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

            }
            function processMessage(message) {
                document.querySelector("h2").innerHTML = "Đặt đi bạn";
                document.getElementById("tai").disabled = false;
                document.getElementById("xiu").disabled = false;
                setDedefault();
                setTimeout(function () {
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
                    if (total < 10) {
                        if (bet == 2) {
                            document.querySelector("h2").innerHTML = "Bạn thắng";
                            bet = 0;
                            sendResult();
                        } else if (bet == 0) {
                            document.querySelector("h2").innerHTML = "Bạn chưa đặt";
                            sendResult();
                        } else {
                            sendResult();
                            bet = 0;
                            document.querySelector("h2").innerHTML = "Bạn thua";
                        }
                        document.querySelector("h1").innerHTML = "Xỉu";
                    } else {
                        if (bet == 1) {
                            document.querySelector("h2").innerHTML = "Bạn thắng";
                            bet = 0;
                            sendResult();
                        } else if (bet == 0) {
                            document.querySelector("h2").innerHTML = "Bạn chưa đặt";
                           sendResult();
                        } else {
                            bet = 0;
                           sendResult();
                            document.querySelector("h2").innerHTML = "Bạn thua";
                        }
                        document.querySelector("h1").innerHTML = "Tài";
                    }
                    document.getElementById("tai").disabled = true;
                    document.getElementById("xiu").disabled = true;
                    total = 0;
                }, 10000);

            }
            function processClose(message) {
                textAreaMessage.value += "Server Disconnect... \n";
            }
            function processError(message) {
                textAreaMessage.value += "Error... " + message + " \n";
            }
            function  checkwinTai() {
                var checkbetTai = document.getElementById("tai").value;
                bet = 1;
                document.querySelector("h2").innerHTML = "Bạn đặt tài";
            }
            function  checkwinXiu() {
                var checkbetXiu = document.getElementById("xiu").value;
                bet = 2;
                document.querySelector("h2").innerHTML = "Bạn đặt xỉu";
            }
            function setDedefault() {
                document.querySelector("h1").innerHTML = "Xin chờ 60s";
                document.querySelector(".img1").setAttribute("src",
                        "img/dice6.png");
                document.querySelector(".img2").setAttribute("src",
                        "img/dice6.png");
                document.querySelector(".img3").setAttribute("src",
                        "img/dice6.png");
            }
             var reusltserver = new WebSocket("ws://localhost:8080/Webtaixiu/sendresults");
            reusltserver.onopen = function (message1) {
                processOpen(message1);
            };
            reusltserver.onmessage = function (message1) {
                processMessage(message);
            };
            reusltserver.onclose = function (message1) {
                processClose(message);
            };
            reusltserver.onerror = function (message1) {
                processError(message1);
            };
            function sendResult() {
                if (typeof reusltserver != 'undefined' && reusltserver.readyState == WebSocket.OPEN) {
                    reusltserver.send(document.getElementById("id_user").value + "ok" + xubet.value);
                }
            }
        </script>
    </body>
</html>
