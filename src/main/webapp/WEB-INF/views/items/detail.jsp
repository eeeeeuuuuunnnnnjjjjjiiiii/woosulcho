<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <meta charset="UTF-8">
    <title>우슬초 아이템 상세 페이지</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/items.css">
</head>

<body>

    <div class="container">
        <h2>우슬초 아이템 상세 페이지</h2>
        <div class="item">
            <h3>${item.name}</h3>
            <p>가격: ${item.price} 원</p>
            <p>도수: ${item.abv}</p>
            <p>맛: ${item.flavor}</p>
            <p>단맛: ${item.sweet}</p>
            <p>바디: ${item.body}</p>
            <p>원재료: ${item.materials}</p>
            <p>상세 설명1: ${item.desc1}</p>
            <p>상세 설명2: ${item.desc2}</p>
            <p>상세 설명3: ${item.desc3}</p>
        </div>
    </div>

</body>