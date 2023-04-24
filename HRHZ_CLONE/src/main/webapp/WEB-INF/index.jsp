<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <link rel="icon" href="/images/favicon48.ico">
    <title>HRHZ</title>
    <link rel="stylesheet" href="css/common/reset.css" />
    <link rel="stylesheet" href="css/common/header_footer.css" />
    <link rel="stylesheet" href="css/common/style.css" />
    <link rel="stylesheet" href="css/main/index.css" />
    
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@500&display=swap" rel="stylesheet" />
  </head>
  <body>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <main>
      <div class="swiperSlide">
        <div class="swiperImg">
          <a href=""><img src="images/common/swiperSlide.jpeg" alt="" /></a>
          <div class="swiperPage">
            <span class="swiperPageCurrent"><strong>01 / </strong></span><span class="swiperPageTotal"><strong>11</strong></span>
          </div>
        </div>
      </div>

      <div class="miniMenu">
        <!-- 동적처리 -->
        <a href="">
          <img src="images/common/test.jpg" alt="" />
          <span>아몬즈 단독</span>
        </a>
        <a href="">
          <img src="images/common/test.jpg" alt="" />
          <span>아몬즈 단독</span>
        </a>
        <a href="">
          <img src="images/common/test.jpg" alt="" />
          <span>아몬즈 단독</span>
        </a>
        <a href="">
          <img src="images/common/test.jpg" alt="" />
          <span>아몬즈 단독</span>
        </a>
        <a href="">
          <img src="images/common/test.jpg" alt="" />
          <span>아몬즈 단독</span>
        </a>
        <a href="">
          <img src="images/common/test.jpg" alt="" />
          <span>아몬즈 단독</span>
        </a>
        <a href="">
          <img src="images/common/test.jpg" alt="" />
          <span>아몬즈 단독</span>
        </a>
        <a href="">
          <img src="images/common/test.jpg" alt="" />
          <span>아몬즈 단독</span>
        </a>
      </div>

      <article class="mainArticle">
        <span class="articleTitle"><strong>주말에는 더 큰 혜택으로</strong></span>
        <a href=""><img src="images/common/main_promotion.jpeg" /></a>
      </article>

      <article class="timeSaleArticle">
        <span class="articleTitle"><strong>곧 혜택이 사라져요!</strong></span>
        <div class="articleContents timeSaleContents">
          <a href="">
            <div class="articleImg timeSaleImg">
              <div class="saleTag">~54%</div>
              <img src="images/common/test.jpg" />
            </div>
            <div class="articleDesc">
              <span><strong>3개월간 가장 사랑받은</strong></span>
              <span>14K 주얼리</span>
            </div>
          </a>
          <a href="">
            <div class="articleImg timeSaleImg">
              <div class="saleTag">~15%</div>
              <img src="images/common/test.jpg" />
            </div>
            <div class="articleDesc">
              <span><strong>편안한 데일리 아이템</strong></span>
              <span>실버 주얼리</span>
            </div>
          </a>
        </div>
      </article>

      <article class="bestArticle">
        <span class="bestTitle"><strong>BEST</strong></span>
        	<div class="bestContents">
        		<!-- <div class="bestContent">
                        <a href="/purchase/productDetail">
                            <div class="bestImg">
                                <img src="../images/category/test.jpg" />
                            </div>
                            <div class="bestDesc">
                                <span><strong>브랜드명</strong></span>
                                <span>상품명</span>

                                <div class="bestPrice">
                                    <span class="percentage"
                                        ><span><strong>13</strong></span
                                        >%</span
                                    >
                                    <span class="price"
                                        ><span><strong>164,330</strong></span
                                        >원</span
                                    >
                                    
                                </div>
                            </div>
                            <div class="likeNumber">
                                좋아요 <span>4,400</span>
                            </div>
                        </a>
                        <img
                            class="heartIcon heartIconWhite"
                            src="../images/category/heart.jpg"
                        />
                        <img
                            class="heartIcon heartIconViolet"
                            src="../images/category/heart_violet.jpg"
                        />
                    </div>
                    <div class="bestContent">
                        <a href="/purchase/productDetail">
                            <div class="bestImg">
                                <img src="../images/category/test.jpg" />
                            </div>
                            <div class="bestDesc">
                                <span><strong>브랜드명</strong></span>
                                <span>상품명</span>

                                <div class="bestPrice">
                                    <span class="percentage"
                                        ><span><strong>13</strong></span
                                        >%</span
                                    >
                                    <span class="price"
                                        ><span><strong>164,330</strong></span
                                        >원</span
                                    >
                                    
                                </div>
                            </div>
                            <div class="likeNumber">
                                좋아요 <span>4,400</span>
                            </div>
                        </a>
                        <img
                            class="heartIcon heartIconWhite"
                            src="../images/category/heart.jpg"
                        />
                        <img
                            class="heartIcon heartIconViolet"
                            src="../images/category/heart_violet.jpg"
                        />
                    </div>
 
 <div class="bestContent">
                        <a href="/purchase/productDetail">
                            <div class="bestImg">
                                <img src="../images/category/test.jpg" />
                            </div>
                            <div class="bestDesc">
                                <span><strong>브랜드명</strong></span>
                                <span>상품명</span>

                                <div class="bestPrice">
                                    <span class="percentage"
                                        ><span><strong>13</strong></span
                                        >%</span
                                    >
                                    <span class="price"
                                        ><span><strong>164,330</strong></span
                                        >원</span
                                    >
                                    
                                </div>
                            </div>
                            <div class="likeNumber">
                                좋아요 <span>4,400</span>
                            </div>
                        </a>
                        <img
                            class="heartIcon heartIconWhite"
                            src="../images/category/heart.jpg"
                        />
                        <img
                            class="heartIcon heartIconViolet"
                            src="../images/category/heart_violet.jpg"
                        />
                    </div>
  -->
 </div>
      </article>

      <article class="">
        <span class="articleTitle"><strong>이번 주 TOP 100</strong></span>
        <div class="articleContents">
          <div class="articleContent">
                        <a href="/purchase/productDetail">
                            <div class="articleImg">
                                <img src="../images/category/test.jpg" />
                            </div>
                            <div class="articleDesc">
                                <span><strong>브랜드명</strong></span>
                                <span>상품명</span>

                                <div class="articlePrice">
                                    <span class="percentage"
                                        ><span><strong>13</strong></span
                                        >%</span
                                    >
                                    <span class="price"
                                        ><span><strong>164,330</strong></span
                                        >원</span
                                    >
                                    <img
                                        class="deliveryIcon"
                                        src="../images/category/delivery_today.jpg"
                                        alt="delivery today icon"
                                    />
                                </div>
                            </div>
                            <div class="likeNumber">
                                좋아요 <span>4,400</span>
                            </div>
                        </a>
                        <img
                            class="heartIcon heartIconWhite"
                            src="../images/category/heart.jpg"
                        />
                        <img
                            class="heartIcon heartIconViolet"
                            src="../images/category/heart_violet.jpg"
                        />
                    </div>
 
          <a href="">
            <div class="articleImg">
              <img src="images/common/test.jpg" />
            </div>
            <div class="articleDesc">
              <span><strong>편안한 데일리 아이템</strong></span>
              <span>실버 주얼리</span>

              <div class="articlePrice">
                <span class="percentage">
                  <span><strong>13</strong></span>%
                </span>
                <span class="price">
                  <span><strong>164,330</strong></span>원
                </span>
                <img class="deliveryIcon" src="images/common/delivery_today.jpg" alt="delivery today icon" />
              </div>
              <svg class="heartIcon" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                <path stroke-linecap="round" stroke-linejoin="round" d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12z" />
              </svg>
            </div>
          </a>
          <a href="">
            <div class="articleImg">
              <img src="images/common/test.jpg" />
            </div>
            <div class="articleDesc">
              <span><strong>편안한 데일리 아이템</strong></span>
              <span>실버 주얼리</span>

              <div class="articlePrice">
                <span class="percentage">
                  <span><strong>13</strong></span>%
                </span>
                <span class="price">
                  <span><strong>164,330</strong></span>원
                </span>
                <img class="deliveryIcon" src="images/common/delivery_today.jpg" alt="delivery today icon" />
              </div>
              <svg class="heartIcon" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                <path stroke-linecap="round" stroke-linejoin="round" d="M21 8.25c0-2.485-2.099-4.5-4.688-4.5-1.935 0-3.597 1.126-4.312 2.733-.715-1.607-2.377-2.733-4.313-2.733C5.1 3.75 3 5.765 3 8.25c0 7.22 9 12 9 12s9-4.78 9-12z" />
              </svg>
            </div>
          </a>
          <div class="nextBtn">
            <img src="images/common/right_btn.png" alt="right arrow icon" />
          </div>
        </div>
        <a href="" class="viewMore"><p>VIEWMORE</p></a>
      </article>

      <!-- 주얼리 키워드 # 아티클 작업 요 -->

      <article class="">
        <span class="articleTitle"><strong>찐후기로 만나는 주얼리</strong></span>
        <div class="articleContents reviewContents">
          <a href="">
            <div class="reviewImg">
              <img src="images/common/test.jpg" />
            </div>
            <div class="articleDesc">
              <img />별점 이미지
              <span>후기상세</span>
              <span class="reviewProduct">제품명</span>
            </div>
          </a>

          <a href="">
            <div class="reviewImg">
              <img src="images/common/test.jpg" />
            </div>
            <div class="articleDesc">
              <img />별점 이미지
              <span>후기상세</span>
              <span class="reviewProduct">제품명</span>
            </div>
          </a>

          <a href="">
            <div class="reviewImg">
              <img src="images/common/test.jpg" />
            </div>
            <div class="articleDesc">
              <img />별점 이미지
              <span>후기상세</span>
              <span class="reviewProduct">제품명</span>
            </div>
          </a>

          <a href="">
            <div class="reviewImg">
              <img src="images/common/test.jpg" />
            </div>
            <div class="articleDesc">
              <img />별점 이미지
              <span>후기상세</span>
              <span class="reviewProduct">제품명</span>
            </div>
          </a>

          <div class="nextBtn bestNextBtn">
            <img src="images/common/right_btn.png" alt="right arrow icon" />
          </div>
        </div>
      </article>
    </main>

    <%@ include file="/WEB-INF/views/common/footer.jsp" %>

    <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script type="text/javascript" src="js/index.js"></script>
    <script type="text/javascript" src="js/header_footer.js"></script>
  </body>
</html>
