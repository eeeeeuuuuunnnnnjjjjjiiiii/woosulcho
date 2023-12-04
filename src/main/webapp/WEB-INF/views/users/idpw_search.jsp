<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "G마켓 산스";
        }

        body {
            background-color: #E2DED5;
        }

        .wrap {
            width: 100%;
            height: 90vh;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: row;
            flex-wrap: wrap;
        }

        .search {
        	align-items: center;
            display: flex;
            background-color: #fff;
            border: 1px solid #fff;
            border-radius: 10px;
            box-shadow: 5px 3px 5px 3px gray;
            width: 500px;
            height: 340px;
            margin: 55px;
            cursor: pointer;
        }

        .search:hover {
            background-color: #FEBE1A;
            border: 1px solid #FEBE1A;
            border-radius: 10px;
        }

        .search div {
            padding: 50px;
        }

        #img {
            width: 50%;
            float: right;
        }

        .back {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 50px;
            bottom: 0; 
        }

        #go_back {
            width: 30%;
            height: 50px;
            border: 0;
            outline: none;
            border-radius: 40px;
            background: #febe1a;
            color: white;
            font-size: 1.2em;
            letter-spacing: 2px;
        }
    </style>
</head>

<body>
    <div class="wrap">
        <div class="search">
            <div class="id_search" id="id_search" onclick="goToIdSearch()">
                <h1>아이디 찾기</h1>
                <br><br>
                <p>아이디를 잊어버리셨나요?</p>
                <img src="/wsch/resources/img/id-card.png" id="img">
            </div>
        </div>
        <div class="search">
            <div class="pw_search" id="pw_search" onclick="goToPasswordSearch()">
                <h1>비밀번호 찾기</h1>
                <br><br>
                <p>비밀번호를 잊어버리셨나요?</p>
                <img src="/wsch/resources/img/password.png" id="img">
            </div>
        </div>
    </div>
    <div class="back">
        <input type="button" value="뒤로 가기" id="go_back" onclick="goBack()">
    </div>
    <script>
        function goBack() {
            window.location.href = "/wsch/login";
        }
        function goToIdSearch() {
            window.location.href = "/wsch/id_search";
        }
        function goToPasswordSearch() {
            window.location.href = "/wsch/pw_search";
        }
    </script>
</body>

</html>