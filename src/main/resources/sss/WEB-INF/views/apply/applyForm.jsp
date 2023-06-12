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
			<h1>개발자 지원서(Item)</h1>
			<hr>
			<fieldset>
				<legend>개인정보</legend>
				<ul>
					<li>
						<span>이름</span>
						<input type="text" name="userName" id="userName"
						placeholder="공백없이 입력하세요" 
						form="applyForm" required autofocus>
					</li>
					<li>
						<span>연락처</span>
						<input type="text" name="userPhone" id="userPhone"
						form="applyForm">
					</li>
				</ul>
			</fieldset>
			<fieldset>
				<legend>지원 분야</legend>
				<ul>
					<li>
						<label>
							<input type="radio" name="part"
							form="applyForm" value="Java" checked>
							<span>Java</span>
						</label>					
					</li>
					<li>
						<label>
							<input type="radio" name="part"
							form="applyForm" value="Android">
							<span>Android</span>
						</label>
					</li>
					<li>
						<label>
							<input type="radio" name="part"
							form="applyForm" value="React">
							<span>React</span>
						</label>
					</li>
				</ul>
			</fieldset>
			<fieldset>
				<legend>지원 동기</legend>
				<textarea name="motive" id="motive"	form="applyForm"
						placeholder="지원 동기 기재란" ></textarea>
			</fieldset>
			
			<div id="btnArea">
				<button form="applyForm">접수하기</button>
				<button type="reset" form="applyForm">다시 쓰기</button>
				<button type="button" id="goList">리스트</button>
			</div>
			
			
			<form action="/apply" id="applyForm"></form>
			
		</div>
		<!-- div#wrap -->
		<script src="/script/jquery-3.6.4.min.js"></script>
		<script src="/script/script.js"></script>
	</body>
</html>