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
        success: function(data) {
            alert("로그인 성공");
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
    var data = {
        "email": email,
        "password": password,
        "username": username,
        "nickname": nickname
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
        success: function(data) {
            alert("로그인 성공");
            location.href = "/";
        },
        error: function(xhr, textStatus, errorThrown) {
            alert("로그인 실패: " + xhr.status + " " + errorThrown);
        }
    });
}


