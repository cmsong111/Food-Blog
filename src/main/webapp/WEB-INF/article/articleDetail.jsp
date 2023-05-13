<%--
  Created by IntelliJ IDEA.
  User: kimnamju
  Date: 2023/05/05
  Time: 5:07 PM
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
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
            crossorigin="anonymous"></script>
    <script src="<c:url value="/resources/js/reply.js"/>"></script>
    <script src="<c:url value="/resources/js/article.js"/>"></script>
</head>
<body>
<%@ include file="../widget/nav.jsp" %>
<%--made with bootstap article blog show page , and data will add by model--%>
<!-- Page content-->
<input type="hidden" name="article-id" id="article-id" value="${article.id}">
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <!-- Post content-->
            <article>
                <!-- Post header-->
                <header class="mb-4">
                    <!-- Post title-->
                    <h1 class="fw-bolder mb-1">${article.title}</h1>
                    <c:if test="${article.author.email == sessionScope.loginMember.email}">
                        <button class="btn btn-link text-decoration-none text-primary p-0" onclick="editArticle()">Edit</button>
                        <button class="btn btn-link text-decoration-none text-danger p-0" onclick="deleteArticle(${article.id})">Delete</button>
                    </c:if>


                    <!-- Post meta content-->
                    <div class="text-muted fst-italic mb-2">Posted on ${article.title} by ${article.author.username}</div>
                    <!-- Post categories-->
                    <%--                    <a class="badge bg-secondary text-decoration-none link-light" href="#!">Web Design</a>--%>
                    <%--                    <a class="badge bg-secondary text-decoration-none link-light" href="#!">Freebies</a>--%>
                </header>
                <!-- Preview image figure-->
                <figure class="mb-4"><img class="img-fluid rounded" src="${article.pictureUrl}" alt="..."/></figure>
                <!-- Post content-->
                <section class="mb-5">
                    <p class="fs-5 mb-4">${article.content}</p>
                </section>
            </article>
            <!-- Comments section-->
            <section class="mb-5">
                <div class="card bg-light">
                    <div class="card-body">
                        <!-- Comment form-->
                        <form class="mb-4"><textarea class="form-control" name="reply-content" id="reply-content" rows="3"
                                                     placeholder="Join the discussion and leave a comment!" onkeydown='mykeydown()'></textarea>
                        </form>
                        <!-- Single comment-->
                        <c:forEach items="${article.reply}" var="reply">
                            <div class="d-flex mb-4 justify-content-between align-items-center">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="${reply.user.imageUrl}" width="50px" height="50px" alt="...">
                                    <div class="ms-3">
                                        <div class="d-flex align-items-center">
                                            <div class="fw-bold me-2" style="cursor:pointer" onclick="window.location.href='/user/profile/${reply.user.email}'">${reply.user.nickname}</div>
                                            <div class="text-muted me-2">${reply.createTime}</div>
                                            <c:if test="${reply.user.email == sessionScope.loginMember.email}">
                                                <button class="btn btn-link text-decoration-none text-danger p-0" onclick="deleteReply(${reply.id})">
                                                    Delete
                                                </button>
                                            </c:if>
                                        </div>

                                        <div>${reply.content}</div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </section>
        </div>
<%--        <!-- Side widgets-->--%>
<%--        <div class="col-lg-4">--%>
<%--            <!-- Search widget-->--%>
<%--            <div class="card mb-4">--%>
<%--                <div class="card-header">Search</div>--%>
<%--                <div class="card-body">--%>
<%--                    <div class="input-group">--%>
<%--                        <input class="form-control" type="text" placeholder="Enter search term..." aria-label="Enter search term..."--%>
<%--                               aria-describedby="button-search"/>--%>
<%--                        <button class="btn btn-primary" id="button-search" type="button">Go!</button>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- Categories widget-->--%>
<%--            <div class="card mb-4">--%>
<%--                <div class="card-header">Categories</div>--%>
<%--                <div class="card-body">--%>
<%--                    <div class="row">--%>
<%--                        <div class="col-sm-6">--%>
<%--                            <ul class="list-unstyled mb-0">--%>
<%--                                <li><a href="#!">Web Design</a></li>--%>
<%--                                <li><a href="#!">HTML</a></li>--%>
<%--                                <li><a href="#!">Freebies</a></li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                        <div class="col-sm-6">--%>
<%--                            <ul class="list-unstyled mb-0">--%>
<%--                                <li><a href="#!">JavaScript</a></li>--%>
<%--                                <li><a href="#!">CSS</a></li>--%>
<%--                                <li><a href="#!">Tutorials</a></li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- Side widget-->--%>
<%--            <div class="card mb-4">--%>
<%--                <div class="card-header">Side Widget</div>--%>
<%--                <div class="card-body">You can put anything you want inside of these side widgets. They are easy to use, and feature the Bootstrap 5--%>
<%--                    card component!--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
    </div>
</div>

<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
</body>
</html>
