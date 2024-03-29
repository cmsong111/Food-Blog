<%@ page import="com.classy.instagram.user.dto.UserDto" %>
<%@ page import="com.classy.instagram.configuration.SessionConfig" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true" %>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="/">Instagram</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <c:choose>
                    <c:when test="${empty sessionScope.loginMember}">
                        <li class="nav-item">
                            <a class="nav-link" href="/user/login">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/user/signup">SignUp</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="/chat">Chatting</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/article/post">Post Article</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/user/profile/${sessionScope.loginMember.email}">User Info</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/user/logout">Logout</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
            <form class="d-flex" action="/user/Search" method="get">
                <input class="form-control me-2" type="text" name="keyword" placeholder="Search by nickname" aria-label="Search">
                <button class="btn btn-outline-light" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
