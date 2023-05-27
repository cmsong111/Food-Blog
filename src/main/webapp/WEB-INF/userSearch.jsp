<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>유저 검색</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
            crossorigin="anonymous"></script>
    <style>
        .user-card {
            margin-bottom: 20px;
        }

        .user-icon {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 50%;
        }

        .card-body {
            padding: 1.25rem;
        }

        .user-name {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .user-email {
            color: #777;
        }
    </style>
    <script>
        function redirectToUserProfile(email) {
            window.location.href = '/user/profile/' + email;
        }
    </script>

</head>
<body>
<%@ include file="widget/nav.jsp" %>
<div class="container">
    <h1>유저 검색 결과</h1>
    <c:forEach items="${users}" var="user">
        <div class="card user-card" onclick="redirectToUserProfile('${user.email}')">
            <img src="${user.imageUrl}" alt="User Icon" class="card-img-top user-icon">
            <div class="card-body">
                <h5 class="card-title user-name">${user.nickname}</h5>
                <p class="card-text user-email">이메일: ${user.email}</p>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>
