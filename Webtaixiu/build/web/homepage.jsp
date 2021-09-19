<%-- 
    Document   : homepage
    Created on : Sep 10, 2021, 11:55:33 PM
    Author     : Admin
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String role = session.getAttribute("role").toString();
            if (role.equals("1")) {
        %>
        <a href="ServerRoll.jsp">Start Server</a>
        <a href="historymanager.jsp">History Room</a>
        <a href="usermanger.jsp">User Manger</a>
        <%
        } else {
        %>
        <a href="ClientRoll.jsp">play</a>
        <%
            }
        %>

    </body>
</html>
