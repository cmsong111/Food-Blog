<%--
  Created by IntelliJ IDEA.
  User: cmson
  Date: 2023-05-02
  Time: 오후 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>hello</h1>
<%--UserLoginFormDto binding and login form--%>
<form action="/user/login" method="post">
    <input type="text" name="email" placeholder="email">
    <input type="password" name="password" placeholder="password">
    <input type="submit" value="login">
</form>
</body>
</html>
