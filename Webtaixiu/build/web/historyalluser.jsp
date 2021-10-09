<%-- 
    Document   : usermanger
    Created on : Sep 18, 2021, 8:05:10 PM
    Author     : Admin
--%>

<%@page import="DTO.History"%>
<%@page import="DAO.DAOHistory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><script src="particles.js-master/particles.js"></script>
        <script src="particles.js-master/demo/js/app.js"></script>
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
        
        <script>
            $(document).ready(function () {
                $('#example').DataTable();
            });
        </script>
    </body>
    <div class="animate__animated animate__backInDown" style="position: absolute; top: 1%;">
        <div class="navigation">
            <a id="a1" class="button" href="homepage.jsp" >
                <img id="imgNav" src="img/exit.png">
                <div class="logout" href="homepage.jsp">Quit</div>
            </a>
        </div>
    </div>
    <div class="container" style="width: max-content; height: max-content">
        <table id="example" class="styled-table">
            <thead>
                <tr>
                    <th>Id Room</th>
                    <th>User Name</th>
                    <th>Result</th>
                    <th>Bet</th>
                    <th>Bet Point</th>
                    <th>Bet Win</th>
                </tr>
            </thead>
            <tbody>
                <%
                    DAOHistory history = new DAOHistory();
                    for (History historyuser : history.getHistoryallUser()) {
                %>   
                <tr>

                    <td><%=historyuser.getId_room()%></td>
                    <td><%=historyuser.getUser_name()%></td>
                    <td><%=historyuser.getBetresult()%></td>
                    <td><%=historyuser.getBet()%></td>
                    <td><%=historyuser.getBetpoint()%></td>
                    <td><%=historyuser.getWinpoint()%></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
</html>
