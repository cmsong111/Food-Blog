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
  <script src="<c:url value="/resources/js/auth.js"/>"></script>
</head>
<body>
<%@ include file="widget/nav.jsp" %>

<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-lg-6">
      <form>
        <div class="mb-3">
          <label for="inputEmail" class="form-label">Email</label>
          <input type="email" class="form-control" id="inputEmail" placeholder="Enter email" value="${user.email}" disabled=disabled>
        </div>
        <div class="mb-3">
          <label for="inputPassword" class="form-label">Password</label>
          <input type="password" class="form-control" id="inputPassword" placeholder="Enter password" value="${user.password}">
        </div>
        <div class="mb-3">
          <label for="inputUsername" class="form-label">Username</label>
          <input type="text" class="form-control" id="inputUsername" placeholder="Enter username" value="${user.username}">
        </div>
        <div class="mb-3">
          <label for="inputNickname" class="form-label">Nickname</label>
          <input type="text" class="form-control" id="inputNickname" placeholder="Enter nickname" value="${user.nickname}">
        </div>
        <div class="mb-3">
          <label for="inputImageUrl" class="form-label">Image URL</label>
          <input type="text" class="form-control" id="inputImageUrl" placeholder="Enter image URL" value="${user.imageUrl}">
        </div>
        <button type="submit" class="btn btn-primary" onclick="updateUser()">Save</button>
      </form>
    </div>
  </div>
</div>

</body>
</html>
