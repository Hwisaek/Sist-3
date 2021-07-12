 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업체 등록</title>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function(){
	$('#category').change(function(){
		$('#category').css('color','black');
	});
	
});

function vendor_signup_submit() {
	$.ajax({
		url : "/yomul/vendor_signup_proc",
		method : "POST",
		data : $("#vendor_signup_form").serialize(),
		success : function(result) {
			if (result == 1) {
				alert("업체 등록에 성공했습니다.");
				location.href = "/yomul/vendor_profile_info";
			} else {
				alert("업체 등록에 실패했습니다.");
			}
		}
	});
}
</script>
<!-- HEAD -->
<jsp:include page="../../head.jsp"></jsp:include>
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="../header.jsp"></jsp:include>

	<!--  BODY  -->
	<div id="vendor_signup" class="vendor-signup-content">
		<form id="vendor_signup_form" class="needs-validation" novalidate>
			<div class="vendor-signup-form">
				<div class="vendor-signup-img">
					<button type="button" onclick="document.getElementById('file').click();">
						<svg  class="" width="48" height="48" viewBox="0 0 48 48" fill="currentColor" preserveAspectRatio="xMidYMid meet">
						<path d="M11.952 9.778l2.397-5.994A1.778 1.778 0 0 1 16 2.667h16c.727 0 1.38.442 1.65 1.117l2.398 5.994h10.174c.982 0 1.778.796 1.778 1.778v32c0 .981-.796 1.777-1.778 1.777H1.778A1.778 1.778 0 0 1 0 43.556v-32c0-.982.796-1.778 1.778-1.778h10.174zM24 38c6.075 0 11-4.925 11-11s-4.925-11-11-11-11 4.925-11 11 4.925 11 11 11z"></path>
						</svg>
						<span class="">사진 추가</span>
					</button>
					<input type="file" id="img" style="display:none" >
				</div>
				<div class="vendor-signup-write">
					<div>
					<label>업체명</label>
					<input name="name" type="text" class="form-control" placeholder="예) 당근베이커리, 당근슈퍼" required>
					<p>업체, 비즈니스 또는 단체를 나타내는 이름이 좋아요</p>
					</div>
					<div>
						<label>카테고리</label>
						<select name="category" id="category" class="form-control" required>
							<option value="" disabled selected hidden>카테고리를 설정해 주세요</option>
							<option value="동네구인구직">동네구인구직</option>
							<option value="과외/클래스">과외/클래스</option>
							<option value="농수산물">농수산물</option>
							<option value="중고차">중고차</option>
						</select>
					</div>
					 <div>
						<label>정보</label>
						<textarea name="info" class="form-control" placeholder="정보를 입력해 주세요" required></textarea>
					</div>
					<div>
						<label>전화번호</label>
						<input name="tel" class="form-control" type="text" placeholder="전화번호를 입력해 주세요" required>
					</div>
					<div>
						<label>주소</label>
						<input name="addr" class="form-control" type="text" placeholder="주소를 입력해 주세요" required>
					</div>
					<button class="btn btn-block btn-yomul" type="button" onclick="vendor_signup_submit()">업체 등록</button>
				</div>
			</div>
		</form>
	</div>

	<!-- FOOTER -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>