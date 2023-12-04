<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.List"%>
<%@page import="com.project.wsch.vo.BoardDAO"%>
<%@page import="com.project.wsch.vo.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/swiper@11.0.4/swiper-bundle.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@11.0.4/swiper-bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="/wsch/resources/css/home.css"/>
<style>
  body {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh; /* 이는 콘텐츠가 페이지 세로 중앙에 위치하도록 보장합니다. */
    margin: 0;    
  }
  .boardList {
    width: 100%;
    margin-top: 20px; /* 필요에 따라 상단 마진을 조정하세요 */
    table-layout: fixed;
    border-collapse: collapse;
  }

    .boardList th, .boardList td {
        height: 40px;
        line-height: 40px;
        border: 1px solid #ddd;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        text-align: center;
    }
    
    .boardList th:nth-child(1), .boardList td:nth-child(1), /* 번호 */
    .boardList th:nth-child(7), .boardList td:nth-child(7) { /* 조회수 */
        width: 5%;
    }

    .boardList th:nth-child(2), .boardList td:nth-child(2), /* 제목 */
    .boardList th:nth-child(6), .boardList td:nth-child(6) { /* 내용 */
        width: 25%;
    }

    .boardList th:nth-child(3), .boardList td:nth-child(3), /* 시작날짜 */
    .boardList th:nth-child(4), .boardList td:nth-child(4), /* 종료날짜 */
    .boardList th:nth-child(5), .boardList td:nth-child(5) { /* 장소 */
        width: 15%;
    }

  .write-link {
    text-align: right;
    margin-top: 20px;
  }

  .write-link a {
    display: inline-block;
    padding: 10px 20px;
    background-color: #E2DED5; /* 버튼 배경색 */
    color: white; /* 텍스트 색상 */
    text-decoration: none;
    border-radius: 5px; /* 버튼 테두리를 둥글게 만듭니다. */
    transition: background-color 0.3s ease; /* 배경색 변경 시 부드러운 효과를 적용합니다. */
  }

  .write-link a:hover {
    color: black; /* 버튼에 호버 시 배경색 변경 */
  }
	
  .event_list_page {
    width: 80%;
    max-width: 1200px;
    flex-grow: 1; /* 콘텐츠의 성장 여부를 허용합니다. */
  }

  .event_list_img {
    background: url('https://innertrip.co.kr/wp-content/uploads/2022/08/%EC%A0%84%ED%86%B5%EC%A3%BC-%ED%85%8C%EC%9D%B4%EC%8A%A4%ED%8C%85-1.png');
    width: 100%;
    height: 300px;
    background-size: cover;
    background-position: center;
    margin-bottom: 10px; /* 간격을 줄이려면 마진 값을 조정하세요 */
    margin-top: 50px; /* 이미지를 약간 위로 옮깁니다. */
     position: relative; /* 상대 위치 지정 */
  }
  footer {
    background-color: #f1f1f1; /* 푸터 배경색 설정 */
    padding: 20px; /* 푸터 안쪽 여백 설정 */
    width: 100%;    
    bottom: 0;
    text-align: center;
  }
  .text{
    position: absolute; /* 절대 위치 지정 */
    top: 20%; /* 부모 요소의 중앙에서 상단으로 이동 */
    left: 15%; /* 부모 요소의 중앙에서 좌측으로 이동 */
    transform: translate(-50%, -50%); /* 수평 및 수직으로 중앙 정렬 */
    color: black; /* 텍스트 색상 */
    font-size: 24px; /* 폰트 크기 */
    
    text-align: center; /* 텍스트 가운데 정렬 */
    z-index: 1; /* 다른 요소 위에 표시 */
  }
</style>


</head>
<body>	
<div class="event_list_page">

<!-- 코드 활성화시키면 로그인된사람만 글쓰기 가능하게 됩니다
	<div>		
		<% 
			String log = (String)session.getAttribute("logStatus");
			if(log != null && log.equals("Y")) { 
		%>
			<a href="<%= request.getContextPath() %>/board/board_write">글쓰기</a>
		<% } %>
	</div>
-->

	<%
		BoardDAO dao = new BoardDAO();
		List<BoardVO> lst = dao.boardSelectAll();
	%>
<div class="event_list_img">
<div class="text">행사 살펴보기</div></div>
	<table class="boardList">
	    <tr>
	        <th>번호</th>
	        <th>제목</th>
	        <th>시작날짜</th>
	        <th>종료날짜</th>
	        <th>장소</th>
	        <th>내용</th>
	        <th>조회수</th>
	    </tr>
	    <% for(int i=0; i < lst.size(); i++) {
	        BoardVO vo = lst.get(i);
	    %>
	    <tr>
	        <td><%= vo.getNo() %></td>
	        <td><a href="<%= request.getContextPath() %>/board/board_view?no=<%= vo.getNo() %>"><%= vo.getSubject() %></a></td>
	        <td><%= vo.getStartDate() %></td>
	        <td><%= vo.getEndDate() %></td>
	        <td><%= vo.getLocation() %></td>
	        <td><%= vo.getContent() %></td>
	        <td><%= vo.getHit() %></td>
	    </tr>
	    <% } %>
	</table>
		<div class="write-link">
	    <a href="<%= request.getContextPath() %>/board/board_write">글쓰기</a>
		</div>
</div>
</body>
</html>