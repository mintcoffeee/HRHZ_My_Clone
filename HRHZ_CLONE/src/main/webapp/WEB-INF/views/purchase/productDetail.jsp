<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <link rel="icon" href="/images/favicon48.ico" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <link rel="stylesheet" href="../../css/common/reset.css" />
        <link rel="stylesheet" href="../../css/common/header_footer.css" />
        <link rel="stylesheet" href="../../css/purchase/product_details.css" />
        <!--Noto Sans & Barlow-->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@500&display=swap" rel="stylesheet" />
    </head>

    <body>
        <%@ include file="/WEB-INF/views/common/header.jsp" %>

        <div class="background">
            <div class="outerWrapper">
                <div class="bothSizeSectionWrap">
                    <div class="productImagesSection">
                        <div class="productThumbnail">
                            <div class="swiperSlide">
                                <div class="mainThumbnailList">
                                    <img src="../images/purchase/PSI_299191.jpeg" alt="images" />
                                    <img src="../images/purchase/PSI_299193.jpeg" alt="image" />
                                    <img src="../images/purchase/PSI_529003.jpeg" alt="image" />
                                </div>

                                <div class="swiperButtonPrev">
                                    <img src="../images/purchase/left_btn.png" alt="image" />
                                </div>
                                <div class="swiperButtonNext">
                                    <img src="../images/purchase/right_btn.png" alt="image" />
                                </div>
                            </div>

                            <div class="productThumbnailImageList">
                                <img src="../images/purchase/PSI_299191.jpeg" alt="image" />
                                <img src="../images/purchase/PSI_299193.jpeg" alt="image" />
                                <img src="../images/purchase/PSI_529003.jpeg" alt="image" />
                            </div>
                            <!--productThumbnailImageList-->
                        </div>
                        <!--productThumbnail-->
                        <div class="deliveryInfo">
                            <div class="deliveryTypeInfo">
                                <div class="deliveryType">
                                    <span>배송안내 :</span>
                                    <button class="deliveryTextBtn" type="button">
                                        <span></span>
                                    </button>
                                    <img class="deliveryTypeInfoBtn" alt="image" src="../images/purchase/noti_info.png" />
                                    <button class="inquiryStoreBtn" type="button">
                                        브랜드에 문의하기
                                    </button>
                                </div>
                                <!--deliveryType-->
                                <div class="deliveryTypeDescription">
                                    <div class="deliveryTypeDescriptionLabel">
                                        오늘출발 옵션 :
                                    </div>
                                    <div>
                                        <b>오늘 3시까지 주문 시, 오늘 바로 배송 시작!</b>
                                        <br />
                                        (주말/공휴일 주문건은 가장 빠른 영업일에 출발)
                                    </div>
                                </div>
                                <div class="deliveryTypeDescription">
                                    <div class="deliveryTypeDescriptionLabel">
                                        그 외 옵션 :
                                    </div>
                                    <div>
                                        <b>평균 9일 내 배송</b> /주말, 공휴일 제외
                                        <br />
                                        (상품 제작에 7일, 배송에 2일이 소요됩니다.)
                                    </div>
                                </div>
                            </div>
                            <!--deliveryTypeInfo-->
                            <div class="storeNoticeSection">
                                <div class="storeNoticeTitle">
                                    브랜드에서 알려드려요
                                </div>
                                <div class="storeNoticeContents">
                                    <p>
                                        환경보호를 위해 포장 패키지는 주문번호당 1개씩 제공됩니다. (주얼리 상자+품질보증서)
                                    </p>
                                    <p>
                                        * 파우치는 제공되지 않으며 패키지 구성은 변동될 수 있습니다.
                                    </p>
                                    <p>
                                        * 주얼리 상자 추가 구매 및 리본 포장이 필요하신 경우, 문의글 혹은 카카오톡 채널 @딥브로우 로 남겨주시면 확인 도와드리겠습니다.
                                    </p>
                                    <p>
                                        딥브로우의 모든 상품은 핸드크래프트 , 수작업으로 하나 하나 정성스럽게 제작됩니다.
                                    </p>
                                    <p>
                                        상품에 따라 제작에 2~7일(영업일 기준) 소요됩니다.
                                    </p>
                                </div>
                                <div class="storeNoticeOpenBtn">더 보기</div>
                                <div class="storeNoticeCloseBtn">접기</div>
                            </div>
                        </div>
                        <!--deliveryInfo-->
                        <div class="customerServiceInfo">
                            <div class="orderReturnExchangeBtn">
                                <img src="../images/purchase/arrow_right_btn.png" alt="image" />
                                <span>교환 및 반품 정보</span>
                            </div>
                            <div class="asInfoBtn">
                                <img src="../images/purchase/arrow_right_btn.png" alt="image" />
                                <span>A/S 정보</span>
                            </div>
                            <span class="underline"></span>
                        </div>
                        <!--customerServiceInfo-->
                        <div class="productDetailImages">
                            <img src="../images/purchase/PSI_524322.jpeg" alt="image" />
                            <img src="../images/purchase/PSI_896819.jpeg" alt="image" />
                            <img src="../images/purchase/PSI_529006.jpeg" alt="image" />
                            <img src="../images/purchase/PSI_896820.jpeg" alt="image" />
                        </div>
                        <!--productDetailImages-->
                    </div>
                    <!--productImagesSection-->
                    <div class="productInfoSection">
                        <div class="productInfo">
                            <div class="badge">
                                <a href="#">
                                    <div class="storeInfo">
                                        <img src="../images/purchase/SAI_9656.jpeg" alt="image" class="storeImage" />
                                        <span class="storeName">딥브로우</span>
                                    </div>
                                </a>
                                <div class="underline2"></div>
                                <div class="iconswrap">
                                    <div class="deliveryBadge">
                                        <span>오늘출발</span>
                                        <span>무료배송</span>
                                    </div>
                                    <img class="urlCopy" src="../images/purchase/product_share_btn.png" />
                                    <div class="productLike">
                                        <img class="productLikeHeart" src="../images/purchase/heart.jpg" />
                                        <img class="productLikeHeartViolet" src="../images/purchase/heart_violet.jpg" />
                                        <span class="productLikeCnt">23,237</span>
                                    </div>
                                </div>
                            </div>
                            <p class="productName">
                                [아몬즈 단독] your necklace 이니셜 목걸이
                            </p>
                            <div class="productReviewRate">
                                <div class="productReviewMore">
                                    <img src="../images/purchase/product_review_star_on.png" alt="image" class="star" />
                                    <img src="../images/purchase/product_review_star_on.png" alt="image" class="star" />
                                    <img src="../images/purchase/product_review_star_on.png" alt="image" class="star" />
                                    <img src="../images/purchase/product_review_star_on.png" alt="image" class="star" />
                                    <img src="../images/purchase/product_review_star_on.png" alt="image" class="star" />
                                </div>
                                <div class="productReviewMoreText">
                                    <a href="">1739개의 후기 보러가기</a>
                                    <img src="../images/purchase/arrow_right_btn.png" alt="image" class="productReviewMoreBtn" />
                                </div>
                            </div>
                            <div class="productPrice">
                                <span class="productPriceDiscountPercentUnitAmount">27%</span>
                                <div class="productPriceSales">
                                    <span class="amount">49,640</span>
                                    <span class="unit">원</span>
                                </div>
                                <span class="productPriceOriginAmount">68,000</span>
                            </div>
                            <div class="earnPoint">496 포인트 적립</div>
                            <div class="availableBenefit">
                                <div class="greatestBenefitList"></div>
                            </div>
                            <div class="productOptionAndPrice">
                                <div class="dropdownCoverSelector">
                                    <div class="dropdownSelect">
                                        <p class="dropdownSelectLabel">
                                            옵션 선택
                                        </p>
                                        <img src="../images/purchase/arrow_bottom_outline_black_btn.png" alt="image" />
                                    </div>
                                    <div class="dropdownBox">
                                        <p class="dropdownOpenLabel">
                                            옵션 선택
                                        </p>
                                        <p class="dropdownOption">옵션1</p>
                                        <p class="dropdownOption">옵션2</p>
                                        <p class="dropdownOption">옵션3</p>
                                        <p class="dropdownOption">옵션4</p>
                                    </div>
                                </div>
                                <ul class="selectedProductOptionList">
                                    <!--
                                    <li class="selectedOptionItem">
                                        <div class="optionBoxTop">
                                            <div class="optionName">A</div>
                                            <img
                                                class="deleteOptionBtn"
                                                src="../images/purchase/delete_btn.png"
                                                alt="X icon"
                                            />
                                        </div>
                                        <div class="productOptionQuantity">
                                            <div class="countWrap">
                                                <img
                                                    class="countDecrease"
                                                    src="../images/purchase/product_quantity_minus_round_btn.png"
                                                    alt="minus icon"
                                                />
                                                <div class="count">0</div>
                                                <img
                                                    class="countIncrease"
                                                    src="../images/purchase/product_quantity_plus_round_btn.png"
                                                    alt="plus icon"
                                                />
                                            </div>
                                            <span class="amountWrap">
                                                <span class="amount"
                                                    >49,640</span
                                                >
                                                <span class="unit">원</span>
                                            </span>
                                        </div>
                                    </li>
                                    -->
                                </ul>
                                <div class="productTotalPrice">
                                    <span class="label">총 상품 금액</span>
                                    <div class="amountWrap">
                                        <span class="amount">0</span>
                                        <span class="unit">원</span>
                                    </div>
                                </div>
                                <div class="productBuyBtnList">
                                    <button class="addCartBtn">장바구니</button>
                                    <button class="purchase">구매하기</button>
                                </div>
                            </div>
                        </div>
                        <!--productInfo-->
                    </div>
                    <!--productInfoSection-->
                </div>
                <!--bothSizeSectionWrap-->

                <div class="bottomSection">
                    <div class="productDetailInfoSection">
                        <div class="infoSectionTitle">
                            <span class="productDetailSectionHead">
                                상품 상세 정보
                            </span>
                        </div>
                        <div class="productDetailSectionContents">
                            <div class="productDetailInfoItem">
                                <div class="productDetailInfoItemLabel">
                                    카테고리
                                </div>
                                <div class="productDetailInfoItemContents">
                                    목걸이, 이니셜목걸이, 하트목걸이, 서브펜던트, 아몬즈 단독, 오늘 출발, 베스트
                                </div>
                            </div>
                            <div class="productDetailInfoItem">
                                <div class="productDetailInfoItemLabel">
                                    소재/베이스
                                </div>
                                <div class="productDetailInfoItemContents">
                                    실버925
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="productReviewSection">
                        <div class="reviewSectionTitle">
                            <div class="productDetailSectionHead">
                                <span class="productDetailSectionTitle">상품 구매후기</span>
                                <span class="productReviewTotalCnt">(1741)</span>
                            </div>
                            <div class="reviewBtnArea">
                                <div class="reviewBtnDescribe">
                                    상품 구매 후 후기를 작성하면
                                    <span>최대 1,000 포인트</span>를 드려요
                                </div>
                                <button>후기작성</button>
                            </div>
                        </div>
                        <div class="productReviewList">
                            <a href="#">
                                <div class="productReviewItem">
                                    <div class="reviewInfo">
                                        <div class="rate">
                                            <img src="../images/purchase/product_review_star_on.png" alt="image" />
                                            <img src="../images/purchase/product_review_star_on.png" alt="image" />
                                            <img src="../images/purchase/product_review_star_on.png" alt="image" />
                                            <img src="../images/purchase/product_review_star_on.png" alt="image" />
                                            <img src="../images/purchase/product_review_star_on.png" alt="image" />
                                        </div>
                                        <div class="accountAndDate">
                                            <span class="account">ye96**</span>
                                            <span class="line">|</span>
                                            <span class="date">2023.04.16</span>
                                        </div>
                                    </div>
                                    <div class="reviewContent">
                                        친구에게 선물했는데 만족해했어요! 다음엔 제것도 하나 사고 싶습니다 ㅎㅎ
                                    </div>
                                </div>
                            </a>
                            <ul class="listPagination">
                                <li class="previous disabled"></li>
                                <li class="listPageNumber selected"></li>
                                <li class="listPageNumber"></li>
                                <li class="listPageNumber"></li>
                                <li class="listPageNumber"></li>
                                <li class="listPageNumber"></li>
                                <li class="listPageNumber"></li>
                                <li class="listPageNumber"></li>
                                <li class="break"></li>
                                <li class="listPageNumber"></li>
                                <li class="next"></li>
                            </ul>
                        </div>
                    </div>
                    <div class="productQnaSection">
                        <div class="productDetailSectionContents">
                            <div class="productQnaList">
                                <!--여기서부터 listitemwrap 추가하면 됨.-->
                                <ul class="listPagination">
                                    <li class="previous disabled"></li>
                                    <li class="listPageNumber selected"></li>
                                    <li class="listPageNumber"></li>
                                    <li class="listPageNumber"></li>
                                    <li class="listPageNumber"></li>
                                    <li class="listPageNumber"></li>
                                    <li class="listPageNumber"></li>
                                    <li class="listPageNumber"></li>
                                    <li class="break"></li>
                                    <li class="listPageNumber"></li>
                                    <li class="next"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="recommendProductSection">
                        <div class="recommendProductSectionTitle">
                            비슷한 상품
                        </div>
                        <div class="productListSlider">
                            <div class="swiperWrapper">
                                <!--여기서 slide 더 추가하기!-->
                                <article class="productListItem">
                                    <a href="#">
                                        <div class="productListItemImg">
                                            <img src="../images/purchase/PSI_70381_50.jpeg" alt="image" />
                                            <div class="productName">
                                                Alice Heart Pearl Necklace
                                            </div>
                                            <div class="productPrice">
                                                <span class="price">78,000</span>
                                                <span class="won">원</span>
                                            </div>
                                        </div>
                                    </a>
                                </article>

                                <article class="productListItem">
                                    <a href="#">
                                        <div class="productListItemImg">
                                            <img src="../images/purchase/PSI_86734_50.jpeg" alt="image" />
                                            <div class="productName">
                                                [아몬즈 단독] Ball Snake Necklace
                                            </div>
                                            <div class="productPrice">
                                                <span class="discount">15%</span>
                                                <span class="price">45,050</span>
                                                <span class="won">원</span>
                                            </div>
                                        </div>
                                    </a>
                                </article>

                                <article class="productListItem">
                                    <a href="#">
                                        <div class="productListItemImg">
                                            <img src="../images/purchase/PSI_143891_50.jpeg" alt="image" />
                                            <div class="productName">
                                                luv bracelet
                                            </div>
                                            <div class="productPrice">
                                                <span class="discount">10%</span>
                                                <span class="price">50,400</span>
                                                <span class="won">원</span>
                                            </div>
                                        </div>
                                    </a>
                                </article>

                                <article class="productListItem">
                                    <a href="#">
                                        <div class="productListItemImg">
                                            <img src="../images/purchase/PSI_169737_50.jpeg" alt="image" />
                                            <div class="productName">
                                                Love pendant necklace
                                            </div>
                                            <div class="productPrice">
                                                <span class="price">69,000</span>
                                                <span class="won">원</span>
                                            </div>
                                        </div>
                                    </a>
                                </article>

                                <article class="productListItem">
                                    <a href="#">
                                        <div class="productListItemImg">
                                            <img src="../images/purchase/PSI_221436_50.jpeg" alt="image" />
                                            <div class="productName">
                                                [아이유, 성유리 착용] One clip
                                            </div>
                                            <div class="productPrice">
                                                <span class="discount">7%</span>
                                                <span class="price">39,060</span>
                                                <span class="won">원</span>
                                            </div>
                                        </div>
                                    </a>
                                </article>
                                <img class="swiperButtonPrev1 swiperButton" src="../images/common/left_btn.png" alt="image" />
                                <img class="swiperButtonNext1 swiperButton" src="../images/common/right_btn.png" alt="image" />
                            </div>
                            <div class="swiperPagination">
                                <span class="swiperPaginationBullet"></span>
                                <span class="swiperPaginationBullet"></span>
                                <span class="swiperPaginationBullet"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--outerWrapper-->
        </div>
        <%@ include file="/WEB-INF/views/common/footer.jsp" %>
        <!--background-->

        <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
        <script type="text/javascript" src="../js/purchase/product_details.js"></script>
    </body>
</html>
