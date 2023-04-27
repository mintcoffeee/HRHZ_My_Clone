<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section class="myPageContentSection">
  <section class="myPageSection">
    <h3>상품 구매후기</h3>
    <div>
      <ul class="reviewTopList">
        <li class="reviewTopListTitle0">
          <button class="reviewBtn" type="button">상품후기쓰기</button>
        </li>
        <li class="reviewTopListTitle1">
          <button class="reviewBtn" type="button">작성내역</button>
        </li>
        <li class="reviewTopListTitle1">
          <button class="reviewBtn" type="button">좋아요한 후기</button>
        </li>
      </ul>
      <section class="reviewContent">
        <article class="writingProductReviews">
          <div class="reviewContentWrap">
            <section class="">
              <article class="reviewContentNotice">
                <strong>작성가능한 상품 후기</strong>
                <p>
                  일반후기 작성시 500 point를, 사진을 첨부하여 포토후기를 작성하면 1,000 point를 지급해드립니다.
                </p>
              </article>
              <article class="reviewContentInstruction">
                <dl>
                    <button class="reviewBtn">
                      <dt>상품후기 유의사항</dt>
                    </button>
                  <dd>
                    <ul>
                      <li>
                        후기는 구매확정된 상품에 한하여 작성 가능합니다.
                      </li>
                      <li>
                        후기를 삭제하는 경우 지급된 포인트는 회수되며, 회수할 포인트가 부족한 경우 해당 상품의 후기를 재작성하거나 후기를 되돌리는 것이 불가능 합니다.
                      </li>
                      <li>
                        후기를 작성한 상품의 반품/취소/교환의 경우, 지급된 포인트가 회수됩니다.
                      </li>
                      <li>
                        첨부된 사진의 실제 상품 사진이 아니거나 직접 촬영한 사진이 아닌 경우, 지급된 포인트가 회수될 수 있습니다.
                      </li>
                      <li>
                        후기의 경우, 아몬즈 이용 약관에 따라 아몬즈 마케팅 및 기획전에 활용될 수 있습니다.
                      </li>
                    </ul>
                  </dd>
                </dl>
              </article>
            </section>
            <!-- 동적할당 -->
            <div class="reviewEmpty">작성할 상품후기가 없습니다.</div>
          </div>
        </article>
        <article class="writingHistory">
          <div class="reviewEmpty">작성한 상품 후기가 없습니다.</div>
        </article>
        <article class="likedReviews">
          <div class="reviewEmpty">좋아요한 상품후기가 없습니다.</div>
        </article>
      </section>
    </div>
  </section>
</section>
