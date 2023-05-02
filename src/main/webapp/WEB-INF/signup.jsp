<%--
  Created by IntelliJ IDEA.
  User: cmson
  Date: 2023-05-02
  Time: 오후 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입</title>
</head>
<body>
<%--회원가입 폼 만들어줘--%>
<form action="/user/signup" method="post" modelAttribute="SignUpForm">
    <input type="text" name="username"  placeholder="username">
    <input type="text" name="email" placeholder="email">
    <input type="password" name="password" placeholder="password">
    <input type="submit" value="login">
</form>
</body>
</html>
