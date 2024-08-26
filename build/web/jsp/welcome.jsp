<%-- 
    Document   : welcome
    Created on : 24 Aug 2024, 14:23:46
    Author     : mspee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
   <body>
    <%
        String username = (String) session.getAttribute("username");
        if (username == null) {
            response.sendRedirect("login.jsp");
        }
    %>
    <h1>Welcome, <%= username %>!</h1>
    <p>You have successfully logged in.</p>
    <p><a href="LogoutServlet">Logout</a></p>
</body>
</html>
