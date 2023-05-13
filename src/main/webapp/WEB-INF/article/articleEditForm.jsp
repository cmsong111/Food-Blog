<%--
  Created by IntelliJ IDEA.
  User: cmson
  Date: 2023-05-14
  Time: 오전 1:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>게시글 수정</title>
    <script src="<c:url value="/resources/js/article.js"/>"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
            crossorigin="anonymous"></script>
</head>
<body>
<%@ include file="../widget/nav.jsp" %>
<%--blog article form with bootstrap form--%>
<div class="container">
    <div class="row">
        <div class="col-md-10 offset-md-1">
            <form>
                <input type="hidden" id="id" name="id" value="${article.id}">
                <div class="form-group">
                    <label for="title">제목</label>
                    <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" value="${article.title}">
                </div>
                <div class="form-group">
                    <label for="content">내용</label>
                    <textarea class="form-control" id="content" name="content" rows="10" >${article.content}</textarea>
                </div>
                <div class="form-group">
                    <label for="pictureUrl">사진</label>
                    <input type="text" class="form-control" id="pictureUrl" name="pictureUrl" value="${article.pictureUrl}">
                </div>
            </form>
            <button class="btn btn-primary" onclick="editArticle()">수정</button>
        </div>
    </div>
</div>

</body>
</html>
