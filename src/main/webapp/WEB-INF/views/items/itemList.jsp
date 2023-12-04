<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>우술초 아이템 목록</title>
<style>
body {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'G마켓 산스';
}

#img {
	background: url('/wsch/resources/img/recmnd/tranditional.webp')
		no-repeat;
	background-size: cover;
	width: 100%;
	height: 200px;
	background-position: center;
	margin-top: 50px;
}

#line h1 {
	border: 1px solid #000;
	width: 100%;
}

.menu {
	padding: 25px 0;
	text-align: center;
	margin: 0 auto;
}

.menu a {
	margin: 5%;
	color: black;
	text-decoration-line: none;
}

.grid_container {
	width: 80%;
	height: auto;
	padding: 50px 0 0 0;
	justify-content: center;
	display: flex;
	flex-wrap: wrap;
	margin: 0 auto;
}

.item {
	width: calc(25% - 20px);
	margin: 1%;
	padding: 20px;
	border: 1px solid #ddd;
	border-radius: 5px;
}
</style>
</head>

<body>
	<div class="container">
		<div id="img"></div>
		<div id="line">
			<h1></h1>
		</div>
		<div class="menu">
			<a href="#">증류주</a> <a href="#">리큐르</a> <a href="#">약주</a> <a
				href="#">과실주</a> <a href="#">기타주류</a>
		</div>
		<div id="line">
			<h1></h1>
		</div>
		<div class="grid_container">
			<c:forEach var="item" items="${items}">
				<div class="item">
					<p>여기 이미지 들어갈 곳임</p>
					<h3>${item.name }</h3>
					<p>${item.price }원</p>
					<a href="<c:url value='/items/detail/${item.no}'/>">상세 보기</a>
				</div>
				<div class="item">
					<p>여기 이미지 들어갈 곳임</p>
					<h3>${item.name }</h3>
					<p>${item.price }원</p>
					<a href="<c:url value='/items/detail/${item.no}'/>">상세 보기</a>
				</div>
				<div class="item">
					<p>여기 이미지 들어갈 곳임</p>
					<h3>${item.name }</h3>
					<p>${item.price }원</p>
					<a href="<c:url value='/items/detail/${item.no}'/>">상세 보기</a>
				</div>
			</c:forEach>
		</div>

		<div class="pagination">
			<c:forEach var="pageNumber" begin="1" end="${totalPages}">
				<a href="?page=${pageNumber}" class="page-link">${pageNumber}</a>
			</c:forEach>
		</div>

		<div class="clear"></div>
	</div>
</body>

</html>


