<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>
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
  }

  .event_list_img {
    background: url('https://innertrip.co.kr/wp-content/uploads/2022/08/%EC%A0%84%ED%86%B5%EC%A3%BC-%ED%85%8C%EC%9D%B4%EC%8A%A4%ED%8C%85-1.png');
    width: 100%;
    height: 300px;
    background-size: cover;
    background-position: center;
    margin-bottom: 10px;
    position: absolute;
    top: 50px;
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

  .write_form {
    width: 80%;
    max-width: 1200px;
    margin: 20px auto;
    margin-top: 370px;
  }

  .write_form label {
    display: block;
    margin-bottom: 5px;
  }

  .write_form input,
  .write_form textarea {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
  }

.write_form .button_group {
    display: flex;
    justify-content: space-between;
    margin-top: 20px; /* 간격을 추가합니다. */
}

.write_form .rewrite,
.write_form .register {
    padding: 10px 15px; /* 크기를 키우고 간격을 조절합니다. */
    background-color: #5cb85c; /* 색상 변경 */
    color: white;
    border: none;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease, color 0.3s ease, transform 0.3s ease;
}

.write_form .register {
    background-color: #337ab7; /* 색상 변경 */
}

.write_form .rewrite:hover,
.write_form .register:hover {
    
    color: #fff;
    transform: scale(1.05);
}
</style>
</head>
<body>	
  <div class="event_list_page">
    <div class="event_list_img">
      <div class="text">행사 등록하기</div>
    </div>
    <div class="write_form">
      <form method="post" action="<%=request.getContextPath()%>/board/board_write_ok">
        <ul>
          <li>
            <label class="title" for="subject">제목</label>
            <input type="text" name="subject" id="subject" />
          </li>
          <li>
            <label class="title" for="start_date">시작 날짜</label>
            <input type="date" name="start_date" />
          </li>
          <li>
            <label class="title" for="end_date">종료 날짜</label>
            <input type="date" name="end_date" />
          </li>
          <li>
            <label class="title" for="location">장소</label>
            <input type="text" name="location" />
          </li>
          <li>
            <label class="title" for="fee">참가비용</label>
            <input type="text" name="fee" />
          </li>
          <li>
            <label class="title" for="content">내용</label>
            <textarea name="content" id="content"></textarea>
          </li>
          <li class="button_group">             
            <input class="rewrite" type="reset" value="다시쓰기" />    
            <input class="register" type="submit" value="글 등록" />                                   
          </li>
        </ul>
      </form>
      <script>
        CKEDITOR.replace('content');
      </script>
    </div>
  </div>
</body>
</html>
