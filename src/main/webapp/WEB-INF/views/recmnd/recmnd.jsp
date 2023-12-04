<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <title>전통주 추천</title>
    <link rel="stylesheet" href="/wsch/resources/css/recmndStyle.css">
    <link rel="stylesheet" href="/wsch/resources/css/sakura.css">
    <script>
        $(window).load(function () {
            $('body').sakura();
        });
    </script>
    <script>
    var result = [];

    $(function () {
        $(".first_page").hide();
        $(".recmnd").hide();
        $("#next").click(function () {
            var name = $("#question").attr('name');

            if (name == 'q1') {
                $("#img").attr("src", "/wsch/resources/img/recmnd/lemon.png");
                $("#question").text("#2 : 어느정도 신맛을 원하시나요?");
                $("#question").attr('name', 'q2');
                result[0] = $("#answer_in").val();

                $("#answer_in").val("1");

            } else if (name == 'q2') {
                $("#img").attr("src", "/wsch/resources/img/recmnd/aromatherapy.png");
                $("#question").text("#3 : 어느정도 향을 원하시나요?");
                $("#question").attr('name', 'q3');
                result[1] = $("#answer_in").val();

                $("#next").attr('value', '결과 보기');

                $("#answer_in").val("1");

            } else if (name == 'q3') {
                $("#next").hide();
                $("#img").css({
                    width: '50%', // 원하는 너비
                    height: '50%' // 원하는 높이
                }).attr("src", "/wsch/resources/img/recmnd/loading-cat.gif");
                $("#question").text("결과를 가져오는중입니다...");
                $("#answer_in").hide();
                setTimeout(function () {
                    result[2] = $("#answer_in").val();
                    $("#question").text("결과가 나왔습니다...");
                    $("#img").attr("src", "/wsch/resources/img/recmnd/banging-tom-and-jerry.gif");
                    $("#result").text("답변한 값들 : 단맛 " + result[0] + ", 신맛 " + result[1] + ", 향 " + result[2]);
                    setTimeout(function () {
                        $("#next").fadeIn(2000, function () {
                            $(this).prop('disabled', false);
                        });
                        $("#result_go").fadeIn(2000, function () {
                            $(this).prop('disabled', false);
                        });
                    }, 1000);
                    $("#next").attr('onclick', 'location.reload();').val('처음으로');
                }, 2000);
            }
        });
    });
    </script>
</head>

<body>
    <div class="bg">
        <main>
            <div class="wrap" style="text-align: center;">
                <div style="width:100%;
                            max-width:1080px;
                            margin:0 auto;
                            padding: 225px 0 0 0;
                            text-align:center;">
                    <p style="font-size: 30px;">나만의 전통주 찾아보기</p>
                    <div id="question" name="q1" style="font-size: 30px;">
                        #1 어느정도 단맛을 원하시나요?
                    </div>
                    <div id="answer">
                        <input id="answer_in" type="range" value="1" min="1" max="5" list="tickmarks" />
                        <datalist id="tickmarks">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </datalist>
                    </div>
                    <img src="/wsch/resources/img/recmnd/sugar.png" id="img" style="padding: 20px;">
                    <div id="result" style="margin-bottom: 25px;">
                    </div>
                    <input type="button" id="next" value="다음" />
                    <input type="button" id="result_go" value="결과확인" style="display: none;" />
                    <div class="result2">
                        <div class="recmnd">
                            <div class="item">
                                <div class="image">
                                    <a href="#">
                                        <img id="img1" src="/wsch/resources/img/recmnd/baijiu.png">
                                    </a>
                                </div>
                                <div class="inf">
                                    <div class="title">술 이름</div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="image">
                                    <a href="#">
                                        <img id="img2" src="/wsch/resources/img/recmnd/aromatherapy.png">
                                    </a>
                                </div>
                                <div class="inf">
                                    <div class="title">술 이름</div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="image">
                                    <a href="#">
                                        <img id="img3" src="/wsch/resources/img/recmnd/lemon.png">
                                    </a>
                                </div>
                                <div class="inf">
                                    <div class="title">술 이름</div>
                                </div>
                            </div>
                        </div>
                        <button class="first_page" onclick = 'location.reload();'>처음으로</button>
                    </div>
                </div>
        </main>
    </div>
    <script src="/wsch/resources/js/recmnd/sakura.js"></script>
    <script>
        $(function () {
            $("#result_go").click(function () {
                $("#question").text("결과!");
                $(".recmnd").show();
                $("#img, #result, #next").hide();
                $(".first_page").show();
                $(this).hide();
                $(".recmnd").fadeIn(2000, function () {
                });
            });
        });
    </script>
</body>