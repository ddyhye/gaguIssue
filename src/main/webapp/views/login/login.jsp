<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>가구있슈 로그인</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background: url('https://example.com/furniture_background.jpg') no-repeat center center fixed;
        background-size: cover;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .login-container {
        background: rgba(255, 255, 255, 0.8);
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 400px;
        text-align: center;
    }
    h3 {
        margin-bottom: 20px;
        color: #333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        padding: 10px;
        text-align: left;
        vertical-align: middle; /* 수직 정렬 */
    }
    .login-button {
        text-align: right; /* 로그인 버튼을 오른쪽으로 정렬 */
    }
    input[type="text"], input[type="password"] {
        width: calc(100% - 30px); /* 입력란 너비 조정 */
        padding: 10px;
        margin-top: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"] {
        background-color: #8e44ad; /* 보라색 배경색 */
        color: white;
        padding: 30px; /* 더 크게 만들기 */
        border: none;
        border-radius: 10px; /* 정사각형 모양으로 둥글게 만들기 */
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #6c3483;
    }
    .small-button {
        background-color: #8e44ad; /* 보라색 배경색 */
        color: white;
        padding: 10px; /* 높이 줄이기 */
        border: none;
        border-radius: 5px; /* 둥글게 */
        cursor: pointer;
        font-size: 14px; /* 글자 크기 줄이기 */
        transition: background-color 0.3s ease;
    }
    .small-button:hover {
        background-color: #6c3483;
    }
</style>
</head>
<body>
    <div class="login-container">
        <h3>GAGU Issue</h3>
        <hr/>
        <form action="login.do" method="post">
            <table>
                <tr>
                    <th style="width: 70px;">사원번호</th> 
                    <td><input type="text" name="emp_id" placeholder="사원번호를 입력하세요"></td>
                    <td rowspan="2" class="login-button"> 
                        <input type="submit" value="로그인"/>
                    </td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td><input type="password" name="emp_pw" placeholder="비밀번호를 입력하세요"></td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align: center;"> <!-- 나머지 버튼들을 포함한 버튼 컨테이너 -->
                        <input type="button" value="사원번호 찾기" class="small-button" onclick='location.href="./findNumber.go"' style="margin-right: 10px;">
                        <input type="button" value="비밀번호 찾기" class="small-button" onclick='location.href="./findPW.go"'>
                        <input type="button" onclick='location.href="./joinForm.go"' value="회원가입">
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <script>
        var msg = '${msg}';
        if(msg != ""){
            alert(msg);
        }
    </script>
</body>
</html>
