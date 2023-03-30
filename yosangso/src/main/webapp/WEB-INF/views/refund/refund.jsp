<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/refund.css">
	<script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<title>환불페이지</title>
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/common/header.jsp"/>
		
		<div class="container">
            <div class="info-bar">
                <div>
                    <span>환불신청</span>
                </div>
                <div>
                    <strong>주문내역번호</strong> : 123124 - 123123
                </div>
            </div>
            <form action="refundDone.html"  name="refund-form" id="main-form" method="get" onsubmit="return false">
                <div class="outer-line">
                    <div class="refund-in-product-border">
                        <!-- 이미지 -->
                        <div>
                            <div class="img-div">
                                <img src="./image/330639_208664_214.jpg" id="image2">
                            </div>
                        </div>
                        <!-- 이름과 가격 -->
                        <div class="product-detail-price">
                            <!-- 상품내용 -->
                            <div id="detail">
                                상품내용입니다.
                            </div>
                            <!-- 개별가격 -->
                            <div>
                                <span class="prc-color">10,000 </span>원
                            </div>
                        </div>
                        <!-- 개수 -->
                        <div>
                            1개
                        </div>
                        <!-- 총 가격 -->
                        <div>
                            <div>상품 금액</div>
                            10,000 원
                        </div>
                        <!-- 배송비 -->
                        <div>
                            <div>배송비</div>
                            3000 원
                        </div>
                    </div>
                    <div class="price-tag">
                        <div>  
                            상품 금액 10,000원  +  (배송비) 3000 원 = 최종 결제 금액 13,000원 
                        </div>
                        <div>
                            <button id="refund-button" type="button" onclick="refundTest()">환불하기</button>
                        </div>
                    </div>
                </div>         
            </form>
        </div>
        <jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	</body>
</html>