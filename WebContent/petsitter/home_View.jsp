<!-- 
	2021/10/13 유주용 Action 첫구성

 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펫시터 검색 페이지</title>

<script>
function validCheck() {
	const frm = document.frmReg;
	//1. 패스워드는 8글자 이상이어야 한다.
	if (frm.address.value.length = null){
		alert('주소를 입력해주세요');
		frm.address.focus();				// 포커스(커서) 이동 
		return false;						//함수가 종료.
	}
	

}
</script>

<!-- 
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link href="../css/bootstrap.min.css" rel="stylesheet"> -->
<link rel="stylesheet" href="../css/web.css">
</head>
<body>
<form action="Select_PetSitter_Action.jsp" name="frmReg" method="post" onsubmit="return validCheck()">
	<div class = "div1">
		<div class = "box1">
			<label>주소 :</label>
			<input type="text" name="address" placeholder="주소를 입력해주세요(필수)" required>&nbsp;&nbsp;
			<label>날짜 :</label> 
			<input type="date" name="wdate_start" required>&nbsp;~
			<input type="date" name="wdate_final" required>
		</div>
		<div class="box2">
			<div>
			<input type="checkbox" name="owner" value="반려동물없음">반려동물없음 
			<input type="checkbox" name="owner" value="픽업가능">픽업가능 
			<input type="checkbox" name="owner" value="대형견가능">대형견가능 
			<input type="checkbox" name="owner" value="마당있음">마당있음
			<input type="checkbox" name="owner" value="노견케어">노견케어
			</div>
		</div>
		<div class="box3">
			<div  style="text-align: center">
			 <input type="submit" value="찾기"> 
			 <input type="reset" value="다시쓰기">
			 <input type="submit" value="사진찾기" onClick="location.href='PetSitterGalleryAction.jsp'">
			</div>
		</div>
	</div>
	<c:forEach var="cmt" items="${cmtlist }">
				<li>펫시터 목록
					<ul>
						<li>idx값 :  ${cmt.idx}</li>
						<li>주소 : ${cmt.address}</li>
						<li>날짜 : ${cmt.wdate}</li>	
						<li>날짜 : ${cmt.owner}</li>		
					</ul>
				</li>
	</c:forEach>
	<c:forEach var = "item" items = "${glist}">
	<div class = "container">
		<div class = "thumbnail">
			<img alt = "gallery" src = "/img/${item.filename }">
			<!-- /img/는 url 경로와 c:\upload 매핑이 필욯ㅂ니다 -->
		</div>
		<div>
			<strong>${item.title }</strong>
		</div>
	</div>
	</c:forEach>
</form>
</body>
</html>