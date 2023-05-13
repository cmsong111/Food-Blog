function login() {
    var email = $("#email").val();
    var password = $("#password").val();
    var data = {
        "email": email,
        "password": password
    };
    $.ajax({
        type: "POST",
        url: "/user/login",
        contentType: "application/json",
        data: JSON.stringify(data),
        dataType: "json",
        success: function() {
            location.href = "/";
        },
        error: function(xhr, textStatus, errorThrown) {
            alert("로그인 실패: " + xhr.status + " " + errorThrown);
        }
    });
}


function register() {
    var email = $("#email").val();
    var password = $("#password").val();
    var password_re = $("#password_re").val();
    var username = $("#username").val();
    var nickname = $("#nickname").val();
    var pictureUrl = $("#pictureUrl").val();
    var data = {
        "email": email,
        "password": password,
        "username": username,
        "nickname": nickname,
        "imageUrl": pictureUrl
    };
    if (password !== password_re) {
        alert("비밀번호가 일치하지 않습니다.");
        return;
    }
    $.ajax({
        type: "POST",
        url: "/user/signup",
        contentType: "application/json",
        data: JSON.stringify(data),
        dataType: "json",
        success: function() {
            alert("회원가입 및 로그인 성공");
            location.href = "/";
        },
        error: function(xhr, textStatus, errorThrown) {
            alert("로그인 실패: " + xhr.status + " " + errorThrown);
        }
    });
}


function updateUser(){
    var email = $("#inputEmail").val();
    var password = $("#inputPassword").val();
    var username = $("#inputUsername").val();
    var nickname = $("#inputNickname").val();
    var imageUrl = $("#inputImageUrl").val();
    var data = {
        "email": email,
        "password": password,
        "username": username,
        "nickname": nickname,
        "imageUrl": imageUrl
    };

    $.ajax({
        type: "PATCH",
        url: "/user/profile/edit",
        contentType: "application/json",
        data: JSON.stringify(data),
        dataType: "json",
        statusCode: {
            200: function() {
                alert("수정 성공");
                location.href = "/user/profile/"+email;
            },
            400: function() {
                alert("수정 실패");
            },
            401: function() {
                alert("유저정보가 일치하지 않습니다.");
            }
        }
    });
}
