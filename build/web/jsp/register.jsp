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
        <title>Registration</title>
    </head>
    <body>
    <h1>Register</h1>
    <form action="${pageContext.request.contextPath}/RegisterServlet" method="post">
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username" required><br><br>

        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required><br><br>

        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <input type="submit" value="Register">
    </form>
    <p><a href="${pageContext.request.contextPath}/jsp/index.jsp">Back to Home</a></p>
</body>
</html>
