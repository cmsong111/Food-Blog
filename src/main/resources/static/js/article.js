const handle201 = function (data) {
    alert("글이 등록되었습니다.");

    window.location.href = "/article/" + data.id;
};

const handle400 = function (data) {
    alert("잘못된 요청입니다.");
}

const handle401 = function (data) {
    alert("로그인이 필요합니다.");
    window.location.href = "/user/login";
}

function postArticle() {
    const data = {
        title: $("#title").val(),
        content: $("#content").val(),
        pictureUrl: $("#pictureUrl").val()
    };

    $.ajax({
        type: "POST",
        url: "/article/api/articles",
        data: JSON.stringify(data),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        statusCode: {
            201: handle201,
            401: handle401
        }
    });
}

function editArticle() {
    const data = {
        id: $("#id").val(),
        title: $("#title").val(),
        content: $("#content").val(),
        pictureUrl: $("#pictureUrl").val()
    };

    $.ajax({
        type: "PATCH",
        url: "/article/" + data.id,
        data: JSON.stringify(data),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        statusCode: {
            200: handle201,
            201: handle201,
            401: handle401
        }
    });
}

function deleteArticle(id) {
    $.ajax({
        type: "DELETE",
        url: "/article/" + id,
        statusCode: {
            204: function () {
                alert("게시글이 삭제 되었습니다.");
                window.location.href = "/";
            },
            400: handle400,
            401: handle401
        }
    });
}


function like() {
    var id = $("#article-id").val();
    $.ajax({
        type: "POST",
        url: "/article/" + id + "/like",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        statusCode: {
            200: function () {
                window.location.reload();
            },
            400: handle400, // 잘못된 요청일 경우 처리할 함수
            401: handle401 // 로그인 필요한 경우 처리할 함수
        }
    });
}

function dislike() {
    var id = $("#article-id").val();

    $.ajax({
        type: "DELETE",
        url: "/article/" + id + "/like",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        statusCode: {
            200: function () {
                window.location.reload();
            },
            400: handle400, // 잘못된 요청일 경우 처리할 함수
            401: handle401 // 로그인 필요한 경우 처리할 함수
        }
    });
}


