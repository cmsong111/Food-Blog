<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>인스타그램</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
            crossorigin="anonymous"></script>
</head>
<body>
<%@ include file="widget/nav.jsp" %>
<div class="container">
    <div class="col-12  col-md-10 offset-md-1">
        <div class="row row-cols-1 row-cols-md-3 g-4 justify-content-center">
            <c:forEach items="${articles}" var="article">
                <div class="col">
                    <div class="card h-100" onclick="window.location.href='/article/${article.id}'" style="cursor:pointer">
                        <img src="${article.pictureUrl}" class="card-img-top" alt="article image" style="width: 100%;">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <h5 class="card-title">${article.title}</h5>
                                <p class="card-text">❤ ${article.likesCount}</p>
                            </div>
                            <p class="card-text">${article.content}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>



</body>
</html>
