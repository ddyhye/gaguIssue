<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>사원번호</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<style>
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        font-family: 'Arial', sans-serif;
        background-color: #f0f0f0;
    }
    .container {
        text-align: center;
        padding: 200px;
        background: #ffffff; /* 흰색 배경 */
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border: 1px solid #ccc; /* 테두리 추가 */
    }
    .emp-id {
        color: red; /* emp_id의 색상 설정 */
        font-weight: bold; /* 글씨를 굵게 */
    }
    p {
        font-size: 24px; /* 글씨 크기 설정 */
        line-height: 1.6; /* 줄 간격 설정 */
        margin: 20px 0; /* 위아래 여백 설정 */
    }
    button {
        background-color: #8e44ad; /* 보라색 배경색 */
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        margin-top: 20px;
        transition: background-color 0.3s ease;
    }
    button:hover {
        background-color: #6c3483;
    }
</style>
</head>
<body>
    <div class="container">
        <p>${emp_name}님의 사원번호는<br><span class="emp-id">${emp_id}</span>입니다.</p>
        <button onclick="location.href='/login.go'">로그인 페이지로 돌아가기</button>
    </div>
</body>
</html>
