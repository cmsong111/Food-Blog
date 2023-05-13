<%--
  Created by IntelliJ IDEA.
  User: cmson
  Date: 2023-05-02
  Time: 오후 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>로그인 페이지</title>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
            crossorigin="anonymous"></script>
    <script src="<c:url value="/resources/js/auth.js"/>"></script>

</head>
<body>
<!-- Responsive navbar-->
<%@ include file="widget/nav.jsp" %>
<!-- Page content-->
<div class="container">
    <div class="text-center mt-5">
        <form action="/user/login" method="post">
            <div class="form-floating">
                <input type="email" class="form-control" id="email" name="email" placeholder="이메일 입력...">
                <label for="email">이메일</label>
            </div>
            <br>
            <div class="form-floating">
                <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                <label for="password">비밀번호</label>
            </div>
            <br>
        </form>
        <button class="w-100 btn btn-lg btn-primary" onclick="login()">로그인</button>
        <br><br>
        <a href="signup">회원가입</a>
    </div>
</div>

</body>
</html>
