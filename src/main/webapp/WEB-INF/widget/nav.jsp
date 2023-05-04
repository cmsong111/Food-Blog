<%@ page import="com.example.demo.user.dto.UserDto" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="/">Instagram</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">

                <c:set var="user" value="${sessionScope[SessionConfig.LOGIN_MEMBER]}"/>


                <c:if test="${empty user}">
                    <li class="nav-item"><a class="nav-link" href="/user/login">Login</a></li>
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="/user/signup">SignUp</a></li>
                </c:if>
                <c:if test="${not empty user}">
                    <li class="nav-item"><a class="nav-link" href="/user/profile">User Info</a></li>
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="/user/logout">Logout</a></li>
                </c:if>

                <c:if test="${not empty user}">
                    <li><span>Welcome, ${user}!</span></li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>

