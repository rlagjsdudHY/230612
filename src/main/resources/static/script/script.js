/**
 * 
 */
 
 $(function(){
	$("button#goFormBtn").click(function(){
		location.href="/applyForm";
	});
	
	$("button#goList").click(function(){
		location.href="/selList";
	});
	
	$("button#goInsert").click(function(){
		location.href="/applyForm";
	});
	
	
	$("div.listRow").click(function(){
		let num = $(this).attr("data-link");
		//alert("num : " + num);
		location.href="/selView?num="+num;
	});
	
	//연락처 유효성 검사
	/*
	$("div#btnArea>button:first-child").click(function(){
		let chk = confirm("접수하시겠습니까?");
		if (chk) {
			let motive = $("#motive").val().trim(); 
			if (motive != ""){
				$("#applyForm").submit();
			} else {
				alert("지원 동기를 기재하세요");
				$("#motive").focus();
			}
		} else {
			alert("사용자가 취소하셨습니다.");
		}
	});
	*/
	
 });