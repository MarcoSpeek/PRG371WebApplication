<%-- 
    Document   : register
    Created on : 24 Aug 2024, 14:23:29
    Author     : mspee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <h2>Register</h2>
    <form action="RegisterServlet" method="post">
        Username: <input type="text" name="username" required><br>
        Password: <input type="password" name="password" required><br>
        Name: <input type="text" name="name" required><br>
        Surname: <input type="text" name="surname" required><br>
        Email: <input type="email" name="email" required><br>
        Phone: <input type="tel" name="phone"><br>
        <input type="submit" value="Register">
    </form>
</body>
</html>
