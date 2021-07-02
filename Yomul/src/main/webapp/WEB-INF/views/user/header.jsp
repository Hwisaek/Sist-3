<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class="border-bottom navbar navbar-expand-lg bg-white navbar-light sticky-top">
	<a class="navbar-brand" href="#"> 요물 </a>

	<div class="collapse navbar-collapse" id="navbarText">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="#">홈</a></li>
			<li class="nav-item"><a class="nav-link" href="#">동네생활</a></li>
			<li class="nav-item"><a class="nav-link" href="#">내 근처</a></li>
		</ul>
	</div>

	<form class="form-inline ml-auto">
		<label for="search_bar" class="bi bi-search" style="position: relative; z-index: 10; left: 23px;"> </label>
		<div class="input-group flex-nowrap">
			<input id="search_bar" class="form-control mr-sm-2 pl-4" type="search" placeholder="요물 통합검색" aria-label="Search">
		</div>
	</form>

	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link" href="login">로그인</a></li>
		<li class="nav-item"><a class="nav-link" href="join">회원가입</a></li>
	</ul>
	<div class="dropdown">
		<button type="button" class="btn bg-yomul text-light dropdown-toggle" data-toggle="dropdown">글쓰기</button>
		<div class="dropdown-menu">
			<a class="dropdown-item" href="#">Link 1</a> <a class="dropdown-item" href="#">Link 2</a> <a class="dropdown-item" href="#">Link 3</a>
		</div>
	</div>
</nav>