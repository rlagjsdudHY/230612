<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>리스트</title>
		<link rel="stylesheet" href="/style/style.css">
	</head>
	<body>
		<div id="wrapList">
			<header id="header" class="dFlex">
				<h1>지원 정보 리스트</h1>
				<button type="button" id="goInsert">입력</button>
			</header>
			<hr>
			<div class="listHeader listColumn dFlex">
				<span>번호</span>
				<span>이름</span>
				<span>연락처</span>
				<span>분야</span>
				<span>지원 동기</span>
				<span>등록일</span>
			</div>
			<!-- div.listHeader -->
			<c:forEach var="list" items="${selList}">
				<div class="listRow listColumn dFlex" data-link="${list.num}">
					<span>${list.num}</span>
					<span>${list.userName}</span>
					<span>${list.userPhone}</span>
					<span>${list.part}</span>
					<span>${list.motive}</span>
					<fmt:formatDate var="regTM" value="${list.regTM}" pattern="yyyy-MM-dd"/>
					<span>${regTM }</span>
				</div>
			</c:forEach>
			
		</div>
		<!-- div#wrap -->
		<script src="/script/jquery-3.6.4.min.js"></script>
		<script src="/script/script.js"></script>
	</body>
</html>