<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 수정</title>
<!-- HEAD -->
<jsp:include page="../../head.jsp"></jsp:include>
<script>
	function fileUpload(fis) {
		var str = fis.value;
		// 이미지를 변경한다.
		var reader = new FileReader();
		reader.onload = function(e) {
			$('#profile_img_img').attr('src', e.target.result);
		}
		reader.readAsDataURL(fis.files[0]);
	}
</script>
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="../header.jsp"></jsp:include>

	<!-- MYPAGE HEADER -->
	<%@include file="vendor_header.jsp"%>
	<script type="text/javascript">
		$("#vendor_header_profile").addClass("active").removeClass("text-muted").css("color", "rgb(255, 99, 95)");
		$("#vendor_header_profile_update").addClass("active").removeClass("text-muted").css("color", "rgb(255, 99, 95)");
	</script>

	<!--  BODY  -->
	<section id="myprofile_update" class="container col-md-6 mt-3 border p-3">
		<div class="d-flex justify-content-between mb-3">
			<h1 class="d-inline">프로필 수정</h1>
			<a href="#" class="text-black-50 text-decoration-none" style="line-height: 56px;"><small>탈퇴하기</small></a>
		</div>
		<form name="join_form">
			<div class="form-group row">
				<label for="intro" class="col-md-3 col-form-label">정보</label>
				<div class="col-md-9">
					<textarea id="intro" name="intro" rows="10" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label for="phone" class="col-md-3 col-form-label">전화번호</label>
				<div class="col-md-9">
					<input type="tel" class="form-control" value="02-1234-1234" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="010-0000-0000" name="phone" id="phone">
				</div>
			</div>
			<div class="form-group row">
				<label for="intro" class="col-md-3 col-form-label">프로필 사진</label>
				<div class="col-md-9">
					<div class="input-group mb-3">
						<div class="custom-file">
							<input type="file" class="custom-file-input" id="profile_img" name="profile_img" aria-describedby="profile_img" onchange="fileUpload(this)">
							<label class="custom-file-label" for="profile_img">Choose file</label>
						</div>
					</div>
					<img id="profile_img_img" class="rounded-circle mb-3" src="/yomul/image/이미지준비중.jpg" style="width: 300px; height: 300px;">
				</div>
			</div>
			<button class="btn btn-block btn-yomul" type="submit">업체 정보 수정</button>
		</form>
	</section>

	<!-- FOOTER -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>