$(document).ready(function () {
    // remove GET parameters after uploading review
    //  history.replaceState({}, null, location.pathname);

    var productCode = $('.productCode').text();
    var memberId = $('.memberId').val();

    // ---------------------------------------------------
    //                   smooth scroll
    // ---------------------------------------------------
    $('a[href^="#"]').on("click", function (event) {
        event.preventDefault();
        var target = $(this.hash);
        $("html, body").animate(
            {
                scrollTop: target.offset().top,
            },
            500
        );
    });

    // ---------------------------------------------------
    //                  getProductImages
    // ---------------------------------------------------
    var imgs = $(".mainThumbnailList");
    var img_count = 0;
    var img_position = 1; //default position

    $.ajax({
        type: "post",
        data: "productCode=" + productCode,
        url: "/purchase/getProductImages",
        success: function (data) {
            $.each(data, function (index, items) {
                // thumbnail images
                if (items.thumbnailYn == "Y") {
                    let thumbnailHTML =
                        "<img src='/storage/" +
                        items.brandCode +
                        "/" +
                        items.imgName +
                        "' alt='product thumbnail image'/>";
                    $(".mainThumbnailList").append(thumbnailHTML);
                    $(".productThumbnailImageList").append(thumbnailHTML);
                    img_count++;
                }
                if (items.thumbnailYn == "N") {
                    let detailImagesHTML =
                        "<img src='/storage/" +
                        items.brandCode +
                        "/" +
                        items.imgName +
                        "' alt='product detail image'/>";
                    $(".productDetailImages").append(detailImagesHTML);
                }
            }); //each

            // review modal hiddenInput
            $(".hiddenInputs input[name='brandCode']").val(data[0].brandCode);

            // remove arrow btns when it has only 1 thumbnail
            imgChange();
        },
        error: function (err) {
            console.log(err);
        },
    });

    // ---------------------------------------------------
    //                  getProductDetail
    // ---------------------------------------------------
    $.ajax({
        type: "post",
        data: {
            productCode: productCode,
            memberId: memberId,
        },
        url: "/purchase/getProductDetail",
        success: function (data) {
            // check sessionId & change heart color
            console.log(productCode);
            console.log(memberId);
            console.log(data[0].likeYN);

            if (data[0].likeYN === "Y") {
                $(".productLikeHeart").css("display", "none");
                $(".productLikeHeartViolet").css("display", "block");
            } else {
                $(".productLikeHeart").css("display", "block");
                $(".productLikeHeartViolet").css("display", "none");
            }

            // text load
            $(".storeInfoLink").attr(
                "href",
                "/brand/brandDetail?brandCode=" + data[0].brandCode + "&pg=1"
            );
            $(".storeInfo > img").attr(
                "src",
                data[0].brandImgPath + "/" + data[0].brandImgName
            );
            $(".storeName").text(data[0].brandName);
            $(".productLikeCnt").text(data[0].like);
            $(".productInfo .productName").text(data[0].productName);
            $(".productPriceSales > .amount").text(addComma(data[0].price));
            $(".productPriceOriginAmount").text(addComma(data[0].price * 2));
            // 브랜드에서 알려드려요
            $(".storeNoticeContents > p").text(data[0].comment);
            if (data[0].comment == null) {
                $(".storeNoticeSection").css("display", "none");
            }

            // option title
            $(".dropdownSelectLabel").text(data[0].detailType);
            $(".dropdownOpenLabel").text(data[0].detailType);

            $.each(data, function (index, items) {
                console.log(items.detailCode);
                // add all option box HTML
                let optionItem = $(
                    "<li class='selectedOptionItem'>" +
                        "<div class='optionBoxTop'>" +
                        "<input type='hidden' name='detailCode' value='"+
                        items.detailCode
                        +"' />" +
                        "<div class='optionName'>" +
                        items.detailName +
                        "</div>" +
                        "<img class='deleteOptionBtn' src='../../images/purchase/delete_btn.png' alt='X icon' />" +
                        "</div>" +
                        "<div class='productOptionQuantity'>" +
                        "<div class='countWrap'>" +
                        "<img class='countDecrease' src='../../images/purchase/product_quantity_minus_round_btn.png' alt='minus icon' />" +
                        "<div class='count'>0</div>" +
                        "<img class='countIncrease' src='../../images/purchase/product_quantity_plus_round_btn.png' alt='plus icon' />" +
                        "</div>" +
                        "<span class='amountWrap'>" +
                        "<span class='amount'>0</span>" +
                        "<div class='originalAmount'>" +
                        items.price +
                        "</div>" +
                        "<span class='unit'>원</span>" +
                        "</span></div></li>"
                );
                $("ul.selectedProductOptionList").append(optionItem);

                // option list
                $(".dropdownBox").append(
                    "<p class='dropdownOption'>" + items.detailName + "</p>"
                );
            }); //each
        },
        error: function (err) {
            console.log(err);
        },
    });

    // ---------------------------------------------------
    //                  getProductReviews
    // ---------------------------------------------------
    $.ajax({
        type: "post",
        data: "productCode=" + productCode,
        url: "/purchase/getProductReviews",
        success: function (data) {
            console.log(data);
            //$(".productReviewMoreText span").text(data[0].reviewCount);
            //$(".productReviewTotalCnt").text("(" + data[0].reviewCount + ")");
            var reviewImg = "";
            var reviewSeq = data[0].seq;
            var imgCnt = 1;
            var reviewHTML;
            var imgSeq_t = 0;
            var reviewCnt = 0;

            $.each(data, function (index, items) {
                if (!items.imgSeq) {
                    reviewHTML =
                        "<a href='#'>" +
                        "<div class='productReviewItem'>" +
                        "<div class='reviewSeq'>" +
                        items.seq +
                        "</div>" +
                        "<div class='reviewInfo'>" +
                        "<div class='rate'>" +
                        "<img src='../../images/purchase/product_review_star_on.png' alt='star icon' />".repeat(
                            items.like
                        ) +
                        "</div>" +
                        "<div class='accountAndDate'>" +
                        "<span class='account'>" +
                        items.memberId.substring(0, 4) +
                        "**</span>" +
                        "<span class='line'>|</span>" +
                        "<span class='date'>" +
                        items.regDate +
                        "</span>" +
                        "</div>" +
                        "</div>" +
                        "<div class='reviewContent'>" +
                        items.content +
                        "</div>" +
                        "<div class='reviewPhoto'>";

                    reviewHTML = reviewHTML + "</div></div></a>";

                    $(".productReviewList").append(reviewHTML);
                    reviewHTML = "";
                    reviewCnt++;
                } else {
                    if (items.imgCount + 1 > imgCnt) {
                        reviewImg =
                            reviewImg +
                            "<img src='/storage/review/" +
                            items.imgName +
                            "'/>";
                    }

                    if (items.imgCount === imgCnt) {
                        reviewHTML =
                            "<a href='#'>" +
                            "<div class='productReviewItem'>" +
                            "<div class='reviewSeq'>" +
                            items.seq +
                            "</div>" +
                            "<div class='reviewInfo'>" +
                            "<div class='rate'>" +
                            "<img src='../../images/purchase/product_review_star_on.png' alt='star icon' />".repeat(
                                items.like
                            ) +
                            "</div>" +
                            "<div class='accountAndDate'>" +
                            "<span class='account'>" +
                            items.memberId.substring(0, 4) +
                            "**</span>" +
                            "<span class='line'>|</span>" +
                            "<span class='date'>" +
                            items.regDate +
                            "</span>" +
                            "</div>" +
                            "</div>" +
                            "<div class='reviewContent'>" +
                            items.content +
                            "</div>" +
                            "<div class='reviewPhoto'>";

                        reviewHTML =
                            reviewHTML + reviewImg + "</div></div></a>";
                        $(".productReviewList").append(reviewHTML);
                        reviewHTML = "";
                        reviewImg = "";
                        imgCnt = 1;
                        reviewCnt++;
                    }

                    imgCnt++;
                }
            }); //each
            console.log(reviewCnt);
            $(".productReviewMoreText span").text(reviewCnt);
            $(".productReviewTotalCnt").text("(" + reviewCnt + ")");
        },
        error: function (err) {
            console.log(err);
        },
    });

    // ---------------------------------------------------
    //                  getReviewImages
    // ---------------------------------------------------

    // $(".reviewSeq").each(function () {
    //     const reviewSeqClass = $(this);
    //     $.ajax({
    //         type: "post",
    //         data: "reviewSeq=" + parseInt(reviewSeqClass.text()),
    //         url: "/purchase/getReviewImages",
    //         success: function (data) {
    //             console.log(data);

    //             $.each(data, function (index, imgOriginName) {
    //                 let reviewImages = $(
    //                     "<img src='/storage/review/" + imgOriginName + "'/>"
    //                 );
    //                 reviewSeqClass
    //                     .siblings(".reviewPhoto")
    //                     .append(reviewImages);
    //             }); //each
    //         },
    //         error: function (err) {
    //             console.log(err);
    //         },
    //     });
    // });

    // ---------------------------------------------------
    //                  thumbnail btns
    // ---------------------------------------------------
    // main thumbnail slide
    // call the function by clicking btn
    $(".swiperButtonPrev").click(function () {
        --img_position;
        imgChange();
    });
    $(".swiperButtonNext").click(function () {
        ++img_position;
        imgChange();
    });
    // mini thumbnail click
    $("div.productThumbnail").on(
        "click",
        ".productThumbnailImageList > img",
        function (event) {
            img_position = $(this).index() + 1;
            console.log(img_position);
            imgChange();
        }
    );

    function imgChange() {
        var img_left = (1 - img_position) * 550 + "px";

        imgs.animate({
            left: img_left,
        });

        // btns remove & appear
        $(".swiperButtonNext, .swiperButtonPrev").css("display", "block");
        if (img_position == 1) {
            $(".swiperButtonPrev").css("display", "none");
        }
        if (img_position == img_count) {
            $(".swiperButtonNext").css("display", "none");
        }

        // mini thumbnails opacity
        $(".productThumbnailImageList > img").css("opacity", "1");
        $(".productThumbnailImageList > img")
            .eq(img_position - 1)
            .css("opacity", "0.6");
    }

    // ---------------------------------------------------
    //                    Like heart
    // ---------------------------------------------------
    // like heart icon
    $(".productLikeHeart").on("click", function (event) {
        likeCount(memberId, productCode, "I");
        $(".productLikeHeart").css("display", "none");
        $(".productLikeHeartViolet").css("display", "block");
    });
    $(".productLikeHeartViolet").on("click", function (event) {
        likeCount(memberId, productCode, "D");
        $(".productLikeHeart").css("display", "block");
        $(".productLikeHeartViolet").css("display", "none");
    });

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

    // ---------------------------------------------------
    //                      options
    // ---------------------------------------------------
    // option dropdown box
    $(".productOptionAndPrice").on(
        "click",
        ".dropdownSelect",
        function (event) {
            $(".dropdownBox").css("display", "flex");
        }
    );
    $(".productOptionAndPrice").on("click", ".dropdownBox p", function (event) {
        $(".dropdownBox").css("display", "none");
    });

    // price formatter
    function addComma(num) {
        var regexp = /\B(?=(\d{3})+(?!\d))/g;
        return num.toString().replace(regexp, ",");
    }

    // total price calc function
    function totalUpdate() {
        let total_price = 0;

        $(".selectedOptionItem").each(function () {
            let current_amount = parseInt(
                $(this).find(".amount").text().replace(",", "")
            );

            total_price += current_amount;
        });
        $(".productTotalPrice .amount").text(addComma(total_price));
    }

    // display selected option box
    $(".productOptionAndPrice").on(
        "click",
        ".dropdownOption",
        function (event) {
            // get selected option name
            var select_name = $(this).text();

            // check existing boxes
            $(".selectedOptionItem").each(function () {
                if ($(this).find(".optionName").text() == select_name) {
                    $(this).find(".countIncrease").click();
                    $(this).css("display", "block");
                }
            });
            totalUpdate();
        }
    );

    // count btns
    // - button
    $("ul.selectedProductOptionList").on(
        "click",
        ".countDecrease",
        function (event) {
            const $count_class = $(this).siblings(".count");
            const $amount_class = $(this)
                .parents(".productOptionQuantity")
                .find(".amount");
            const $original_amount_class =
                $amount_class.siblings(".originalAmount");
            let option_count = parseInt($count_class.text());
            let original_amount = parseInt($original_amount_class.text());

            if (option_count > 0) {
                $count_class.text(--option_count);
                $amount_class.text(addComma(option_count * original_amount));
            }
            totalUpdate();
        }
    );
    // + button
    $("ul.selectedProductOptionList").on(
        "click",
        ".countIncrease",
        function (event) {
            const $count_class = $(this).siblings(".count");
            const $amount_class = $(this)
                .parents(".productOptionQuantity")
                .find(".amount");
            const $original_amount_class = $(this)
                .parents(".productOptionQuantity")
                .find(".originalAmount");
            let option_count = parseInt($count_class.text());
            let original_amount = parseInt($original_amount_class.text());

            $count_class.text(++option_count);
            $amount_class.text(addComma(option_count * original_amount));

            totalUpdate();
        }
    );

    // option box delete btn
    $("ul.selectedProductOptionList").on(
        "click",
        ".deleteOptionBtn",
        function (event) {
            const $parentLi = $(this).parents("li.selectedOptionItem");

            // count, amount 초기화
            $parentLi.find(".count").text("0");
            $parentLi.find(".amount").text("0");
            $parentLi.css("display", "none");
            totalUpdate();
        }
    );

    // ---------------------------------------------------
    //                  add cart button
    // ---------------------------------------------------
    $(".addCartBtn").on("click", function (event) {
        if(memberId) {
            let optionList = [];
            let option = "";
            let optionCountSum = 0;

            if (memberId.length < 1) {
                $("section.modalBackGround").css("display", "flex");
                return;
            }

            // listing quantity of all options
            $(".selectedOptionItem").each(function () {
                let detailCode = $(this).find('input[name="detailCode"]').val();
                let optionCount = parseInt($(this).find(".count").text());

                if (optionCount > 0) {
                    option = {optionCode: detailCode, productCount: optionCount};
                    optionList.push(option);
                }

                optionCountSum += optionCount;

            });
            console.log(optionList);
            console.log(optionCountSum);

            if (optionCountSum == 0) {

                alert("선택된 옵션이 없습니다.");
                return;

            } else {
                cartData(optionList);
            }
        } else {
            $.get("/loginModal", function (html){
                $(html).appendTo('body');
            })
        }
      
    });
    // ---------------------------------------------------
    //                   buy now button
    // ---------------------------------------------------
    $(".purchase").on("click", function (event) {
        if(memberId){
            $(".buyNowForm").empty();
            let optionList = [];
            let option = "";
            let optionCountSum = 0;

            // listing quantity of all options
            $(".selectedOptionItem").each(function () {
                let detailCode = $(this).find('input[name="detailCode"]').val();
                let optionCount = parseInt($(this).find(".count").text());
                option = {optionCode: detailCode , productCount:optionCount};

                optionList.push(option);
                optionCountSum += optionCount;
            });

            let jsonList = JSON.stringify(optionList);

            // put data into addCartForm
            const jsonInput = $("<input>")
                .attr("name", "jsonList")
                .val(jsonList)
                .attr("hidden",true);
            $(".buyNowForm").attr("action", "/purchase/payment").append(jsonInput);

            if (optionCountSum == 0) {
                alert("선택된 옵션이 없습니다.");
            } else {
                // send productCode & quantity list
                $(".buyNowForm").submit();
            }
        }else {
            $.get("/loginModal", function (html){
                $(html).appendTo('body');
            })
        }
    });


    // ---------------------------------------------------
    //                   store notice
    // ---------------------------------------------------
    // 더보기
    $(".storeNoticeOpenBtn").on("click", function (event) {
        $(".storeNoticeContents").css("max-height", "1000px");
        $(".storeNoticeOpenBtn").css("display", "none");
        $(".storeNoticeCloseBtn").css("display", "block");
    });
    // 접기
    $(".storeNoticeCloseBtn").on("click", function (event) {
        $(".storeNoticeContents").css("max-height", "60px");
        $(".storeNoticeOpenBtn").css("display", "block");
        $(".storeNoticeCloseBtn").css("display", "none");
    });

    // ---------------------------------------------------
    //                   info modals
    // ---------------------------------------------------
    $(".refundInfoBtn").on("click", function (event) {
        $("section.modalWindow").css("display", "block");
        $(".refundModal").css("display", "flex");
        $(".asModal").css("display", "none");
        $(".reviewModal").css("display", "none");
    });

    $(".asInfoBtn").on("click", function (event) {
        $("section.modalWindow").css("display", "block");
        $(".asModal").css("display", "flex");
        $(".refundModal").css("display", "none");
        $(".reviewModal").css("display", "none");
    });

    // ---------------------------------------------------
    //                   review modal
    // ---------------------------------------------------
    $(".reviewModalBtn").on("click", function (event) {
        $("section.modalWindow").css("display", "flex");
        $(".refundModal").css("display", "none");
        $(".asModal").css("display", "none");
    });

    // 별점 아이콘
    $(".reviewStarIcon").on("click", function (event) {
        $(".reviewStars").children().removeClass("starOn");
        $(this)
            .addClass("starOn")
            .prevAll(".reviewStarIcon")
            .addClass("starOn");
        $(".starCount").val($(this).index() + 1);

        $(".reviewStarIcon").attr(
            "src",
            "../../images/purchase/product_review_star_off.png"
        );
        $(".starOn").attr(
            "src",
            "../../images/purchase/product_review_star_on.png"
        );
    });

    // 등록 버튼 활성화
    $(".reviewWriteDiv textarea").keyup(function (event) {
        if ($(this).val().length >= 5 && $(this).val().length <= 2000) {
            $(".reviewWriteBtn")
                .prop("disabled", false)
                .css("background-color", "#000")
                .css("cursor", "pointer");
        } else {
            $(".reviewWriteBtn")
                .prop("disabled", true)
                .css("background-color", "#ddd")
                .css("cursor", "default");
        }
    });

    // hidden inputs data insert
    $(".hiddenInputs input[name='productCode']").val(productCode);
    $(".hiddenInputs input[name='memberId']").val(memberId);

    // review photo preview
    $(".photoUploadInput").change(function () {
        readURL(this);
    });

    // $(document).on("click", ".imgPreview > span", function (event) {
    //     $(this).index();
    //     $(this).remove();
    // });

    function readURL(input) {
        $(".imgPreview").html("");

        for (let i = 0; i < input.files.length; i++) {
            console.log(i);
            var reader = new FileReader();

            reader.onload = function (e) {
                $(".imgPreview").append(
                    "<span><img src='" + e.target.result + "'/></span>"
                );
            };
            reader.readAsDataURL(input.files[i]);
        }
    }

    // function readURL(input) {
    //     $(".imgPreview").html("");

    //     for (let i = 0; i < 3; i++) {
    //         var reader = new FileReader();
    //         reader.onload = function (e) {
    //             $(".imgPreview").append(
    //                 "<span><img src='" + e.target.result + "'/></span>"
    //             );
    //         };
    //         reader.readAsDataURL(input.files[i]);
    //     }
    // }

    // review upload
    $(".reviewWriteBtn").click(function () {
        var formData = new FormData($(".reviewModal")[0]);

        $.ajax({
            type: "post",
            url: "/purchase/reviewUpload",
            enctype: "multipart/form-data",
            processData: false,
            contentType: false,
            data: formData,
            error: function (err) {
                console.log(err);
            },
        });
    });

    // ---------------------------------------------------
    //                  modals close btn
    // ---------------------------------------------------
    $(".modalCloseBtn").on("click", function (event) {
        $("section.modalWindow").css("display", "none");

        // 별점 아이콘 초기화
        $(".reviewStarIcon").attr(
            "src",
            "../../images/purchase/product_review_star_on.png"
        );
        $(".hiddenInputs .starCount").val("5");
        // textarea 초기화
        $(".reviewWriteDiv textarea").val("");
        // 등록버튼 초기화
        $(".reviewWriteBtn").css("background-color", "#ddd");
    });
    
    
    
   function cartData(optionList) {
    
	    $.ajax({
	        type: "post",
	        url: "/purchase/cartInsert",
	        data: {
	            id : memberId,
	            optionList : JSON.stringify(optionList)
	        },
	        success: function (data) {
	         	$("section.cartModalBackGround").css("display", "flex");
	        },
	        err: function (err) {
	            console.log(err);
	        },
	    });
	}
	


    $(".cartCancleModalBtn").on("click", function (event) {
        $("section.cartModalBackGround").css("display", "none");
    });
	
   
    $(".cartConfirmModalBtn").on("click", function (event) {

        location.href="/purchase/cartForm";
    });
    
});




    