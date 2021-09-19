<%-- 
    Document   : usermanger
    Created on : Sep 18, 2021, 8:05:10 PM
    Author     : Admin
--%>

<%@page import="DTO.History"%>
<%@page import="DAO.DAOHistory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.2/css/dataTables.bootstrap4.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <table id="example" class="table table-striped table-bordered" style="width:100%">
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
            <tfoot>
                <tr>
                     <th>Id Room</th>
                    <th>User Name</th>
                    <th>Result</th>
                    <th>Bet</th>
                    <th>Bet Point</th>
                    <th>Bet Win</th>
                </tr>
            </tfoot>
        </table>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.11.2/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.11.2/js/dataTables.bootstrap4.min.js"></script>
        <script>
            $(document).ready(function () {
                $('#example').DataTable();
            });
        </script>
    </body>
</html>
