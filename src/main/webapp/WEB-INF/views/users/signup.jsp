<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src = "/wsch/resources/js/recmnd/signup.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <style>
    @font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
* {
    font-family: "GmarketSansMedium";
}

body {
    background-color: #E2DED5;
}

#form {
    width: 400px;
    max-width: 100%;
    max-height: auto;
    margin: 7.5vh auto 0 auto;
    padding: 40px;
    background-color: white;
    border-radius: 15px;
    font-size: 12px;
}

#register-title {
    color: #0f2027;
    text-align: center;
    font-size: 25px;
}

#form button, #back {
    padding: 10px;
    margin-top: 10px;
    width: 100%;
    color: white;
    background-color: #febd1a;
    border: none;
    border-radius: 4px;
}

.input-control {
	margin: 35px 0 0 0; 
    display: flex;
    flex-direction: column;
    padding: 0 0 5% 0px;
    font-size: 0.9rem;
    position: relative;
}


.input-control > label {
    margin-bottom: 8px;
}

.input-control input {
    border: 1px solid #febd1a;
    border-radius: 4px;
    display: block;
    font-size: 15px;
    padding: 10px;
    width: 94.3%;
}

.input-control input:focus {
    outline: 0;
}

.input-control.success input {
    border-color: #09c372;
}

.input-control.error input {
    border-color: #ff3860;
}

.input-control > #idCheck {
    width: 90px;
    height: 32px;
    font-size:12px;
    font-weight:bold;
    line-height:12px;
    color: white;
    background-color: #febd1a;
    text-align:center;
    position: absolute;
    top:31.6px;
    right:6px; 
    z-index:3;
}

.input-control.error {
    color: #ff3860;
}


#register-submit {
    height:52px;
    font-size: 18.5px;
    display: inline-flex;
    position:flex;
    flex-direction: column;
    align-items: center; /* 媛�濡� - 以묒븰�쑝濡� */
    justify-content: center; /* �꽭濡� - �긽�떒�쑝濡� */
}
    </style>
</head>
<body>
    <div class="container">
        <form method="post" id="form" action="">
            <h1>회원가입</h1>
            <div class="input-control">
                <label for="id">아이디</label>
                <input id="userid" name="userid" type="text">
                <input type="button" id="idCheck" name="idCheck" value="중복 확인">
                <input type="hidden" name="chk" id="chk" value="N"/>
                <div class="error"></div>
            </div>
            <div class="input-control">
                <label for="pw">비밀번호</label>
                <input id="userpwd" name="userpwd" type="password">
                <div class="error"></div>
            </div>
            <div class="input-control">
                <label for="pw_confirm">비밀번호 확인</label>
                <input id="pw_confirm" name="pw_confirm" type="password">
                <div class="error"></div>
            </div>
            <div class="input-control">
                <label for="email">이메일</label>
                <input id="email" name="email" type="text">
                <div class="error"></div>
            </div>
            <div class="input-control">
                <label for="addr">주소</label>
                <input id="addr" name="addr" type="text">
                <div class="error"></div>
            </div>
            <div class="input-control">
                <label for="phonenum">전화번호</label>
                <input id="phonenum" name="phonenum" type="text">
                <div class="error"></div>
            </div>
            <button type="submit" id="submit">가입하기</button>
            <button id="back">뒤로가기</button>
        </form>
    </div>
    <script>
        var button = document.getElementById("back");

        button.addEventListener("click", function () {
            window.location.href = "/wsch/login"; // 원하는 링크로 수정
        });
    </script>
</body>

</html>