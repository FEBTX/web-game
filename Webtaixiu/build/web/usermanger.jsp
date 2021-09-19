<%-- 
    Document   : usermanger
    Created on : Sep 18, 2021, 8:05:10 PM
    Author     : Admin
--%>

<%@page import="DTO.User"%>
<%@page import="DAO.DAOUser"%>
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
                    <th>User Name</th>
                    <th>Full Name</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>Point</th>
                    <th>Rating</th>
                </tr>
            </thead>
            <tbody>
                <%
                    DAOUser dao = new DAOUser();
                    for (User user : dao.getUser()) {
                %>   
                <tr>
                    <td><%=user.getUser_name()%></td>
                    <td><%=user.getFullname()%></td>
                    <td><%=user.getPhone()%></td>
                    <td><%=user.getAddress()%></td>
                    <td><%=user.getPoint()%></td><!--  -->
                    <td><%=user.getRating()%></td><!--  -->
                </tr>
                <%
                    }
                %>
            </tbody>
            <tfoot>
                <tr>
                    <th>User Name</th>
                    <th>Full Name</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>Point</th>
                    <th>Rating</th>
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
