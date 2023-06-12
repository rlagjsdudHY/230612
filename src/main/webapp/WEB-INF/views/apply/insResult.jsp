<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>Document</title>
		<link rel="stylesheet" href="/style/style.css">
	</head>
	<body>
		<div id="wrap">
			<h1> ${applyList.userName } 지원 정보</h1>
			<hr>
			
			<ul id="resPrnUL">
				<li>연락처 : ${applyList.userPhone }</li>
				<li>지원 분야 : ${applyList.part }</li>
				<li>지원 동기 : ${applyList.motive }</li>
			</ul>
			<div id="btnArea">
				<button type="button" id="goList">리스트</button>
				<button type="button" id="goFormBtn">입력</button>
			</div>
			
			
			
		</div>
		<!-- div#wrap -->
		<script src="/script/jquery-3.6.4.min.js"></script>
		<script src="/script/script.js"></script>
	</body>
</html>