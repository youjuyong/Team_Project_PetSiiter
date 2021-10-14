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
<title>펫시터 목록</title>
<style>
	ul{
		list-style: none;
		padding-inline-start:0px;  /* 목록 들여쓰기 없애기 */
	}
	ul #name{
		padding : 5px  20px;
		margin : 5px 0px;
		background-color: tomato;
		color:white;
	}
	li {
		padding : 5px  20px;
	}
</style>
</head>
<body>
<c:forEach var="cmt" items="${cmtlist }">
				<li>펫시터 목록
					<ul>
						<li>주소 : ${cmt.address}</li>
						<li>날짜 : ${cmt.wdate}</li>	
						<li>날짜 : ${cmt.owner}</li>		
					</ul>
				</li>
</c:forEach>
</body>
</html>