<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 보기</title>
<!-- HEAD -->
<jsp:include page="../../head.jsp"></jsp:include>
</head>
<body style="height: 100vh;">
	<!-- HEADER -->
	<jsp:include page="../header.jsp"></jsp:include>

	<!-- MYPAGE HEADER -->
	<%@include file="vendor_header.jsp"%>
	<script type="text/javascript">
		$("#vendor_header_profile").addClass("active").removeClass("text-muted").css("color", "rgb(255, 99, 95)");
		$("#vendor_header_profile_info").addClass("active").removeClass("text-muted").css("color", "rgb(255, 99, 95)");
	</script>

	<!--  BODY  -->
	<section id="verdor_info" style="height: 75%; display: flex; align-items: center;">
		<div class="container border mt-3 p-3">
			<div class="row">
				<div class="col-md-4 text-center">
					<img class="rounded-circle mb-3" src="/yomul/image/이미지준비중.jpg" style="width: 300px; height: 300px;">
				</div>
				<div class="col-md my-auto" id="vendor-profile-info">
					<h3>업체명</h3>
					<label>카테고리</label>
					<div>
						<label>전화번호 : 02-123-1234</label>
						<label class="near-info-point">·</label>
						<label>주소 : 서울특별시 강남구 역삼동</label>
					</div>
					<div class="vendor-profile-follow">
						<a href="/yomul/vendor_profile_follow">단골<label>10  ></label></a>
					</div>
					<p class="mb-3">이 자리는 업체 정보가 들어가는 자리로 프로필 페이지의 소개 부분인데 프로필 수정에서 소개 쪽을 수정해서 데이터를 입력할 수 있다는 매우 크면서도 작은 장점이 있습니다.</p>
				</div>
			</div>
			<hr>
			<div class="d-flex justify-content-around">
				<a class="btn" href="/yomul/vendor_news_list">
					<h2>
						<i class="bi bi-bell"></i>
					</h2>
					<div class="font-weight-bold">소식</div>
					<div>23</div>
				</a> 
				<a class="btn" href="/yomul/vendor_reviews">
					<h2>
						<i class="bi bi-card-text"></i>
					</h2>
					<div class="font-weight-bold">후기</div>
					<div>42</div>
				</a>
			</div>
		</div>
	</section>

	<!-- FOOTER -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>