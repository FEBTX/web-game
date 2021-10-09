<%-- 
    Document   : usermanger
    Created on : Sep 18, 2021, 8:05:10 PM
    Author     : Admin
--%>

<%@page import="DTO.HistoryRoom"%>
<%@page import="DAO.DAOHistoryRoom"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.2/css/dataTables.bootstrap4.min.css">
        <link type="text/css" rel="stylesheet" href="css/login.css">
        <title>JSP Page</title>
    </head>
    <body id="particles-js">
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.11.2/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.11.2/js/dataTables.bootstrap4.min.js"></script>
        <script src="particles.js-master/particles.js"></script>
        <script src="particles.js-master/demo/js/app.js"></script>
        <script>
            $(document).ready(function () {
                $('#example').DataTable();
            });
        </script>
    </body>
    <div class="animate__animated animate__backInDown" style="position: absolute; top: 1%;">
        <div class="navigation">
            <a id="a1" class="button" href="homepage.jsp" >
                <img id="imgNav" src="img/exit.png" >
                <div class="logout" href="homepage.jsp">Quit</div>
            </a>
        </div>
    </div>
    <div class="container" style="width: max-content; height: max-content">
        <table id="example" class="styled-table">
            <thead>
                <tr>
                    <th style="border-top-left-radius: 8px">Id Room</th>
                    <th>Result</th>
                    <th>Status</th>
                    <th>Total Played</th>
                    <th style="border-top-right-radius: 8px">Total Number</th>
                </tr>
            </thead>
            <tbody>
                <%
                    DAOHistoryRoom dao = new DAOHistoryRoom();
                    for (HistoryRoom historyRoom : dao.getHistory()) {
                %>   
                <tr>
                    <td><%=historyRoom.getId_room()%></td>
                    <td><%=historyRoom.getResult()%></td>
                    <td><%=historyRoom.getStatus()%></td>
                    <td><%=historyRoom.getTotal_played()%></td>
                    <td><%=historyRoom.getTotalNumber()%></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
</html>
