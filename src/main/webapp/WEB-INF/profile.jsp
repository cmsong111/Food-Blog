<%--
  Created by IntelliJ IDEA.
  User: kimnamju
  Date: 2023/05/02
  Time: 1:23 PM
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
    <title>${user.nickname}</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
<!-- Navigation-->
<%@ include file="widget/nav.jsp" %>
<!-- Product section-->
<section class="py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="row gx-4 gx-lg-5 align-items-center">
            <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="${user.imageUrl}" alt="..."/></div>
            <div class="col-md-6">
                <h1 class="display-5 fw-bolder">${user.username}</h1>
                <div class="fs-5 mb-5">
                    <span>${user.nickname}</span>
                </div>
                <p class="lead">${user.email}</p>
                <c:if test="${user.email == sessionScope.loginMember.email}">
                    <div class="d-flex" onclick="window.location.href='/user/profile/edit'">
                        <button class="btn btn-outline-primary me-3" id="btnEditProfile">프로필 수정</button>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</section>
<!-- Related items section-->
<section class="py-5 bg-light">
    <div class="container px-4 px-lg-5 mt-5">
        <h2 class="fw-bolder mb-4">Posted articles</h2>
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <c:forEach items="${userArticles}" var="article">
                <div class="col mb-5" onclick="window.location.href='/article/${article.id}'">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="${article.pictureUrl}" height="200" width="450" alt="..." style="cursor:pointer"/>
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder">${article.title}</h5>
                                <!-- Product price-->
                                    ${article.content}
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

</body>
</html>
