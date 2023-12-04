<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
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

#form button {
    padding: 10px;
    margin-top: 10px;
    width: 100%;
    color: white;
    background-color: #febd1a;
    border: none;
    border-radius: 4px;
}

.input-control {
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

a > #idCheck{
    width: 90px;
    height: 32px;
    font-size:12px;
    font-weight:bold;
    line-height:12px;
    color: white;
    background-color: #febd1a;
    text-align:center;
    position: absolute;
    top:21.8px;
    right:6px; 
    z-index:3;
    text-decoration:none;
}

a > #idCheck:hover{
	cursor:pointer;
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
    align-items: center; /* 가로 - 중앙으로 */
    justify-content: center; /* 세로 - 상단으로 */
}
#register-submit:hover{
	cursor:pointer;
}
</style>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
 <script>
 document.addEventListener("DOMContentLoaded", function () {
     // 헤더 숨기기
     var header = document.querySelector("header");
     if (header) {
         header.style.display = "none";
     }

     // 푸터 숨기기
     var footer = document.querySelector("footer");
     if (footer) {
         footer.style.display = "none";
     }
 });
    </script>
 <script>
        document.addEventListener("DOMContentLoaded", function () {
            var form = document.getElementById("form");
            var idInput = document.getElementById("userid");
            var idCheckButton = document.getElementById("idCheck");
            var idCheckHiddenInput = document.getElementById("chk");
            var passwordInput = document.getElementById("userpwd");
            var confirmPasswordInput = document.getElementById("pw_confirm");
            var emailInput = document.getElementById("email");
            var addressInput = document.getElementById("addr");
            var phoneInput = document.getElementById("phonenum");

            form.addEventListener("submit", function (event) {
                if (!validateForm()) {
                    event.preventDefault();
                }
            });

            idCheckButton.addEventListener("click", function () {
                // 여기에서 아이디 중복 확인을 위한 로직을 추가할 수 있습니다.
                // 서버에 아이디 중복 여부를 확인하는 AJAX 요청 등을 수행합니다.
                // 확인이 완료되면 idCheckHiddenInput 값을 'Y'로 변경합니다.
            });

            function validateForm() {
                var isValid = true;

                // 아이디 유효성 검사
                if (idInput.value.trim() === "") {
                    setError(idInput, "아이디를 입력하세요.");
                    isValid = false;
                } else {
                    clearError(idInput);
                }

                // 비밀번호 유효성 검사
                if (passwordInput.value.trim() === "") {
                    setError(passwordInput, "비밀번호를 입력하세요.");
                    isValid = false;
                } else {
                    clearError(passwordInput);
                }

                // 비밀번호 확인 유효성 검사
                if (confirmPasswordInput.value.trim() === "") {
                    setError(confirmPasswordInput, "비밀번호 확인을 입력하세요.");
                    isValid = false;
                } else if (passwordInput.value !== confirmPasswordInput.value) {
                    setError(confirmPasswordInput, "비밀번호가 일치하지 않습니다.");
                    isValid = false;
                } else {
                    clearError(confirmPasswordInput);
                }

                // 이메일 유효성 검사 (간단한 형식 확인)
                var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (!emailRegex.test(emailInput.value.trim())) {
                    setError(emailInput, "올바른 이메일 형식이 아닙니다.");
                    isValid = false;
                } else {
                    clearError(emailInput);
                }

                // 주소 유효성 검사 (주소 검색을 통해 확인하므로 여기서는 생략)

                // 전화번호 유효성 검사 (숫자만 허용)
                var phoneRegex = /^[0-9]+$/;
                if (!phoneRegex.test(phoneInput.value.trim())) {
                    setError(phoneInput, "숫자만 입력하세요.");
                    isValid = false;
                } else {
                    clearError(phoneInput);
                }

                return isValid;
            }

            function setError(input, message) {
                var errorDiv = input.nextElementSibling;
                errorDiv.innerHTML = message;
                input.parentNode.classList.add("error");
            }

            function clearError(input) {
                var errorDiv = input.nextElementSibling;
                errorDiv.innerHTML = "";
                input.parentNode.classList.remove("error");
            }
        });
    </script>
</head>
<body>
    <div class="container">
        <form method= "post" id="form" action="#">
            <div id="register-title">회원가입</div><br/><br/>
            <div class="input-control">
                <label for="userid">아이디</label>
                <input id="userid" name="userid" type="text">
                <a href="/wsch/idCheck"><button type="button" id="idCheck" name="idCheck" >중복확인</button></a>
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
            <button type="submit" id="register-submit">가입하기</button>
        </form>
    </div>
</body>
</html>