function mykeydown() {
    if (window.event.keyCode == 13) //enter 일 경우
    {
        createReply();
    }
}


function createReply() {
    const data = {
        content: $("#reply-content").val()
    };

    const articleId = $("#article-id").val();

    $.ajax({
        type: "POST",
        url: "/article/api/articles/" + articleId + "/reply",
        data: JSON.stringify(data),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        statusCode: {
            201: function (data) {
                alert("댓글이 등록되었습니다.");
                window.location.reload();
            },
            401: function (data) {
                alert("로그인이 필요합니다.");
                window.location.href = "/user/login";
            }
        }
    });
}

function deleteReply(replyId) {
    $.ajax({
        type: "DELETE",
        url: "/article/reply/" + replyId,
        statusCode: {
            204: function () {
                alert("댓글이 삭제되었습니다.");
                window.location.reload();
            },
            400: handle400,
            401: handle401

        }
    });
}
