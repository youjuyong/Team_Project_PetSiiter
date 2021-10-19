<!-- 
	2021/10/13 유주용 Action 첫구성

 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펫시터 정보</title>
<link rel="stylesheet" href="../css/body.css">
</head>
<body>
 	<div class = "container">
 		<div class = "thumbnail">
		<img alt = "gallery" src = "/img/${pets_list.filename}">
			<!-- /img/는 url 경로와 c:\upload 매핑이 필욯ㅂ니다 -->
		<strong>${gall_list.title }</strong>
		</div>
		<div class = "box5">
			<ul class="mylist">
				<li>이름 : ${pets_list.name}</li>
				<li>주소 : ${pets_list.address}</li>
				<li>날짜 : ${pets_list.wdate}</li>	
				<li>준비 : ${pets_list.owner}</li><br>
				<li>멘트 : ${pets_list.comment}</li>
			</ul>
		</div>
		<div class="box3">
			 <!-- <input type="submit" value="찾기"> --> 
		 	<input type="submit" value="신청하기"> 
		</div>
	</div>
</body>
</html>