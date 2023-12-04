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
    margin: 0;
  }
	
  .event_list_page {
    width: 80%;
    max-width: 1200px;
    flex-grow: 1;
    position: relative;
    padding-top: 50px; 
  }

  .event_list_img {
    position: relative;
    top: 0;
    width: 100%;
    height: 300px;
    background: url('https://innertrip.co.kr/wp-content/uploads/2022/08/%EC%A0%84%ED%86%B5%EC%A3%BC-%ED%85%8C%EC%9D%B4%EC%8A%A4%ED%8C%85-1.png');
    background-size: cover;
    background-position: center;
  }
    .text {
    position: absolute;
    top: 20%;
    left: 15%;
    transform: translate(-50%, -50%);
    color: black;
    font-size: 24px;
    text-align: center;
    z-index: 1;
  }
    table {
    width: 100%;
    border-collapse: collapse;
    margin: 50px 0; /* 상하로 여백 추가 */
  }

  th, td {
    border: 1px solid #ddd; /* 테두리 추가 */
    padding: 10px; /* 패딩 추가 */
    text-align: left; /* 텍스트 왼쪽 정렬 */
  }

  th {
    background-color: #f8f8f8; /* 헤더 배경색 추가 */
  }

  td {
    background-color: #fff; /* 셀 배경색 추가 */
  }

  tr:hover td {
    background-color: #f6f6f6; /* 행 호버 시 배경색 변경 */
  }

  th.date, td.date {
 	width: 10%;
    font-size: 1em; /* 시작날짜와 종료날짜의 폰트 크기를 동일하게 설정 */
  }
  
  th.no, td.no {
    width: 10%; /* 번호의 너비를 줄임 */
    white-space: nowrap; /* 번호가 세로로 나오지 않도록 설정 */
  }
  
  th.location, td.location {
    width: 20%; /* 장소의 너비를 줄임 */
    white-space: nowrap; /* 장소가 세로로 나오지 않도록 설정 */
  }

  td.subject {
    width: 10%; /* 입력받은 상자 크기를 늘림 */
  }
  th {
    text-align: center; /* 헤더 텍스트를 가운데로 정렬 */
  }
</style>

</head>
<body>	
  <div class="event_list_page">
    <div class="event_list_img">
      <div class="text">행사 살펴보기</div>
    </div>
        <%
    int no = Integer.parseInt(request.getParameter("no"));

    BoardDAO dao = new BoardDAO();
    dao.hitCount(no); // 조회수 증가
    BoardVO vo = dao.boardView(no); // 레코드 선택 
    %>

<script type="text/javascript">
	function delCheck() {
		// confirm 대화상자는 확인을 : true, 취소 : false
		if(confirm("현재 글을 삭제하시겠습니까?")) {
			location.href = "<%= request.getContextPath() %>/board/board_del?no=<%=vo.getNo()%>";
		}
	}
</script>

<table summary="행사게시판 상세정보">	
	<colgroup>
		<col style="width:14%;" />
		<col />
		<col style="width:14%;" />
		<col style="width:14%;" />
	</colgroup>
	<tbody>
		<tr>
			<th scope="row" class="subject">제목</th>
			<td class="subject" colspan="5"><%=vo.getSubject() %></td>
		</tr>
		<tr>
			<th scope="row" class="date">시작날짜</th>
			<td class="date"><%=vo.getStartDate() %></td>
			<th scope="row" class="date">종료날짜</th>
			<td class="date"><%=vo.getEndDate() %></td>
			<th scope="row">조회수</th>
			<td><%=vo.getHit() %></td>
		</tr>
		<tr>
			<th scope="row">참가비용</th>
			<td><%=vo.getFee() %></td>
			<th scope="row">장소</th>
			<td><%=vo.getLocation() %></td>			
			<th scope="row" class="no">게시글 번호</th>
			<td class="no"><%=vo.getNo() %></td>
		</tr>
		<tr>
			<th scope="row">내용</th>
			<td colspan="5"><%=vo.getContent() %></td>
		</tr>
	</tbody>
</table>
    <div>
        <a href="<%=request.getContextPath()%>/board/board_edit?no=<%=vo.getNo()%>">수정</a>
        <a href="javascript:delCheck()">삭제</a>
    </div>
</div>

</body>
</html>
