<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>인스타그램</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
            crossorigin="anonymous"></script>
</head>
<body>
<%@ include file="widget/nav.jsp" %>

<div class="container">
    <div class="row justify-content-center">
        <c:forEach items="${articles}" var="article">
            <div class="col-lg-6 mb-4">
                <div class="card" onclick="">
                    <img src="https://picsum.photos/400/300" class="card-img-top w-70" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">${article.title}</h5>
                        <p class="card-text">${article.content}</p>
                        <a href="/article/${article.id}" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>



</body>
</html>
