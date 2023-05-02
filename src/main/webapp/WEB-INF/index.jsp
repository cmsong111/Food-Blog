<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<%@ include file="widget/nav.jsp"%>
<h1>인스타그램</h1>
<div>
    <c:out value="${user.username}"/>
    <p>${user.username}</p>

    <a href="/user/login">로그인</a>

    <a href="/user/logout">로그아웃</a>
    <a href="/user/profile">프로필</a>
    <a href="/user/signup">회원가입</a>

</div>

</body>
</html>
