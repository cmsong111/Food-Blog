const handle201 = function (data) {
    alert("글이 등록되었습니다.");

    alert(data.id);
    window.location.href = "/article/" + data.id;
};

function postArticle() {
    const data = {
        title: $("#title").val(),
        content: $("#content").val()
    };

    $.ajax({
        type: "POST",
        url: "/article/api/articles",
        data: JSON.stringify(data),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        statusCode: {
            201: handle201
        }
    });
}
