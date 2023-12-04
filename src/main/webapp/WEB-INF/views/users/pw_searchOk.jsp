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

        .container {
            width: 100%;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;

        }

        #mainContent {
            width: 580px;
            height: 65%;
            margin: 40px auto 42px;
            padding: 0 69px;
            border-radius: 10px;
            box-shadow: 5px 3px 5px 3px gray;
            background-color: #fff;
            position: relative;
        }

        .user_inf {
            align-items: center;
            justify-content: center;
            position: absolute;
            top: 51%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 70%;
        }

        #username,
        #user_email,
        #userid {
            position: relative;
            z-index: 1;
            width: 100%;
            min-height: 45px;
            padding: 10px 0 8px;
            border: 0;
            border-bottom: 2px solid #191919;
            font-size: 18px;
            line-height: 25px;
            color: #191919;
            background-color: transparent;
            letter-spacing: 0;
            box-sizing: border-box;
            outline: 0 none;
            caret-color: #191919;
            opacity: 1;
        }

        .br {
            padding: 150px 0 0 0 ;
        }

        #log_start {
            width: 40%;
            height: 50px;
            border: 0;
            outline: none;
            border-radius: 40px;
            background: #febe1a;
            color: white;
            font-size: 1.2em;
            letter-spacing: 2px;
            float: right;
        }
    </style>
</head>

<body>
    <div class="container">
        <article id="mainContent" class="content-article">
            <div class="user_inf">
                <h1 style="text-align: center;">비밀번호 찾기</h1>
                <div class="br">
                    <div class="result" style="text-align: center">
                        <p>username님의 비밀번호는 ab*******입니다.<p>
                    </div>
                </div>
                <div class="br">
                    <div class="log_start">
                        <input type="button" id="log_start" value="로그인 하기">
                    </div>
                </div>
        </article>
    </div>
    <script>
        var button = document.getElementById("log_start");

        button.addEventListener("click", function () {
            window.location.href = "/wsch/login"; // 원하는 링크로 수정
        });
    </script>
</body>

</html>