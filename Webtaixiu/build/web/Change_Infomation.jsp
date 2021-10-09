<%-- 
    Document   : Change_Infomation
    Created on : 09-10-2021, 12:22:06
    Author     : gbuid
--%>

<%@page import="DTO.User"%>
<%@page import="DAO.DAOUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/typicons.font@2.1.2/src/font/typicons.min.css">
        <title>JSP Page</title>
    </head>
    <body id="particles-js"></body>
     <%
        String user_id = (String) session.getAttribute("Name").toString();
        DAOUser daouser = new DAOUser();
        User user = daouser.getUserbyUsername(user_id);
    %>
    <div class="animate__animated animate__backInDown" style="position: absolute">
        <div class="navigation" >
            <a id="a1" class="button" href="homepage.jsp">
                <img id="imgNav" src="img/exit.png">
                <div class="logout">Back</div>
            </a>
        </div>
    </div>
    <div class="animate__animated animate__backInUp">
        <div class="container" style="height: 550px; top: 75px;">
            <span class="error animate__animated animate__tada" id="msg" style="top: 23%"></span>
            <form name="form1" action="ChangeInfomation" method="POST" class="box" onload="SetStatus()">
                <h4>Game<span>TaiXiu</span></h4>
                <h5>Create your account.</h5>
                <input type="text" name="fullname" id="fullname" placeholder="Full Name" value="<%=user.getFullname()%>" autocomplete="off" required title="Fullname is required">
                <input type="text" name="phone" id="phone" placeholder="Phone Number" value="<%=user.getPhone()%>" autocomplete="off" required pattern="(0[3|5|7|8|9])+([0-9]{8})|(84)+([0-9]{9})\b" title="Phone number must be valid"> 
                <input type="text" name="address" id="address" placeholder="Address" value="<%=user.getAddress()%>" autocomplete="off" required title="Address is required"> 
                <input type="submit" value="Update Account" class="btn1">
            </form>
                <a href="ChangePass.jsp" class="dnthave">You want to change Password?</a>
        </div> 
    </div> 



    <!-- scripts -->
    <script src="particles.js-master/particles.js"></script>
    <script src="particles.js-master/demo/js/app.js"></script>
    <script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>
</html>
