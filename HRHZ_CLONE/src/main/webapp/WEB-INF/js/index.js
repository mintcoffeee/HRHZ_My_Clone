$(function () {
    bestContents();
    articleContents();
    recentReviews();

    var imgs = $(".articleList");
    var img_position = 1; //default position
    var img_count = 3;

    $(".swiperButtonPrev").click(function () {
        --img_position;
        imgChange();
    });

    $(".swiperButtonNext").click(function () {
        ++img_position;
        imgChange();
    });

    function imgChange() {
        var img_left = (1 - img_position) * 984 + "px";

        imgs.animate({
            left: img_left,
        });

        // btns remove & appear
        $(".swiperButtonNext, .swiperButtonPrev").css("display", "block");

        if (img_position === 1) {
            $(".swiperButtonPrev").css("display", "none");
        }
        if (img_position === img_count) {
            $(".swiperButtonNext").css("display", "none");
        }
    }

    function goPost(code) {
        let f = document.createElement("form");
        let i = document.createElement("input");
        f.setAttribute("method", "post");
        f.setAttribute("action", "/purchase/productDetail");

        i.setAttribute("type", "text");
        i.setAttribute("id", "newInputId");
        i.setAttribute("value", code);

        f.appendChild(i);
        document.body.appendChild(f);
        f.submit();
    }
});

// insert like
$(document).on("click", ".heartIconWhite", function () {
    let memberId = $("#memberId").val();
    let code = $(this).siblings("input").val();
    let division = "I";

    if (!memberId) {
        $("section.modalBackGround").css("display", "flex");
        return;
    }
    likeCount(memberId, code, division);
    $(this).hide();
    $(this).next().show();
});

// delete like
$(document).on("click", ".heartIconViolet", function () {
    let memberId = $("#memberId").val();
    let code = $(this).siblings("input").val();
    let division = "D";

    if (!memberId) {
        $("section.modalBackGround").css("display", "flex");
        return;
    }
    likeCount(memberId, code, division);
    $(this).hide();
    $(this).prev().show();
});

$(".modalCloseBtn, .cancleModalBtn").click(function () {
    $("section.modalBackGround").css("display", "none");
});

$(".confirmModalBtn").click(function () {
    location.href = "/signIn";
});

// ---------------------------------------------------
// 			Best product selectList
// ---------------------------------------------------
function bestContents() {
    var contentHTML;
    var memberId =
        $("#memberId").val().length === 0 ? null : $("#memberId").val();

    $.ajax({
        type: "post",
        url: "/bestProduct",
        data: "memberId=" + memberId,
        success: function (data) {
            $.each(data, function (index, items) {
                contentHTML =
                    "<div class='bestContent'>" +
                    "<input type='hidden' name='code' value='" +
                    items.productCode +
                    "'/>" +
                    "<a href='/purchase/productDetail?productCode=" +
                    items.productCode +
                    "'>" +
                    "<div class='bestImg'>" +
                    "<img src='/storage/" +
                    items.imgPath +
                    "' />" +
                    "</div>" +
                    "<div class='bestDesc'>" +
                    "<span><strong>" +
                    items.brandName +
                    "</strong></span>" +
                    "<span>" +
                    items.productName +
                    "</span>" +
                    "<div class='bestPrice'>" +
                    "<span class='percentage'>" +
                    "<span>" +
                    "<strong>50</strong>" +
                    "</span>%</span>" +
                    "<span class='price'>" +
                    "<span><strong>" +
                    items.price +
                    "</strong>" +
                    "</span>원</span>" +
                    "</div>" +
                    "</div>" +
                    "<div class='likeNumber'>" +
                    "좋아요 " +
                    "<span>" +
                    items.likeCount +
                    "</span>" +
                    "</div>" +
                    "</a>";

                if (items.likeYN == "Y") {
                    heartHTML =
                        "<img class='heartIcon heartIconWhite' src='../images/category/heart.jpg' style='display:none'/>" +
                        "<img class='heartIcon heartIconViolet' src='../images/category/heart_violet.jpg'/>" +
                        "</div>";
                } else {
                    heartHTML =
                        "<img class='heartIcon heartIconWhite' src='../images/category/heart.jpg'/>" +
                        "<img class='heartIcon heartIconViolet' src='../images/category/heart_violet.jpg' style='display:none'/>" +
                        "</div>";
                }

                $(".bestContents").append(contentHTML + heartHTML);

                console.log(items.likeYN);
                console.log(heartHTML);
                console.log(memberId);
            }); //each
        }, //success
        err: function (err) {
            console.log(err);
        },
    });
}

// ---------------------------------------------------
// 			top 100 product selectList
// ---------------------------------------------------
function articleContents() {
    var optionItem;
    var memberId =
        $("#memberId").val().length === 0 ? null : $("#memberId").val();

    $.ajax({
        type: "post",
        url: "/top100Product",
        data: "memberId=" + memberId,
        success: function (data) {
            $.each(data, function (index, items) {
                contentHTML =
                    "<div class='articleContent'>" +
                    "<input type='hidden' name='code' value='" +
                    items.productCode +
                    "'/>" +
                    "<a href='/purchase/productDetail?productCode=" +
                    items.productCode +
                    "'>" +
                    "<div class='articleImg'>" +
                    "<img src='/storage/" +
                    items.imgPath +
                    "' />" +
                    "</div>" +
                    "<div class='articleDesc'>" +
                    "<span><strong>" +
                    items.brandName +
                    "</strong></span>" +
                    "<span>" +
                    items.productName +
                    "</span>" +
                    "<div class='articlePrice'>" +
                    "<span class='percentage'>" +
                    "<span>" +
                    "<strong>50</strong>" +
                    "</span>%</span>" +
                    "<span class='price'>" +
                    "<span><strong>" +
                    items.price +
                    "</strong>" +
                    "</span>원</span>" +
                    "</div>" +
                    "</div>" +
                    "<div class='likeNumber'>" +
                    "좋아요 " +
                    "<span>" +
                    items.likeCount +
                    "</span>" +
                    "</div>" +
                    "</a>";

                if (items.likeYN == "Y") {
                    heartHTML =
                        "<img class='heartIcon heartIconWhite' src='../images/category/heart.jpg' style='display:none'/>" +
                        "<img class='heartIcon heartIconViolet' src='../images/category/heart_violet.jpg'/>" +
                        "</div>";
                } else {
                    heartHTML =
                        "<img class='heartIcon heartIconWhite' src='../images/category/heart.jpg'/>" +
                        "<img class='heartIcon heartIconViolet' src='../images/category/heart_violet.jpg' style='display:none'/>" +
                        "</div>";
                }

                $(".top100Article .articleList").append(
                    contentHTML + heartHTML
                );

                console.log(items.likeYN);
                console.log(heartHTML);
            }); //each
        },
        err: function (err) {
            console.log(err);
        },
    });
}

// ---------------------------------------------------
// 			   recent reviews selectList
// ---------------------------------------------------
function recentReviews() {
    var optionItem;

    $.ajax({
        type: "post",
        url: "/getRecentReview",
        data: "json",
        success: function (data) {
            $.each(data, function (index, items) {
                optionItem = $(
                    "<a href='/purchase/productDetail?productCode=" +
                        items.productCode +
                        "'>" +
                        "<div class='reviewImg'>" +
                        "<img src='/storage/review/" +
                        items.imgName +
                        "'/></div>" +
                        "<div class='articleDesc'>" +
                        "<div class='starIcons'>" +
                        "<img src='../images/purchase/product_review_star_on.png' alt='black star' />".repeat(
                            5
                        ) +
                        "</div>" +
                        "<span>" +
                        items.content +
                        "</span>" +
                        "<span class='reviewProduct'>" +
                        items.productName +
                        "</span>" +
                        "</div></a>"
                );
                $(".reviewContents").append(optionItem);
            });
        },
        err: function (err) {
            console.log(err);
        },
    });
}

// ---------------------------------------------------
// 			           likeCount
// ---------------------------------------------------
function likeCount(id, code, division) {
    $.ajax({
        type: "post",
        url: "/likeCount",
        data: {
            id: id,
            code: code,
            codeType: code.charAt(0),
            division: division,
        },
        success: function (data) {
            console.log(data);
        },
        err: function (err) {
            console.log(err);
        },
    });
}
