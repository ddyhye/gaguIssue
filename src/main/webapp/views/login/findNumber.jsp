<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>사원번호 찾기</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background: url('https://example.com/background.jpg') no-repeat center center fixed;
        background-size: cover;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .find-id-container {
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
    input[type="text"] {
        width: calc(100% - 22px); /* 입력란 너비 조정 */
        padding: 10px;
        margin-top: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    select {
        width: 30%;
        padding: 10px;
        margin-top: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        display: inline-block;
    }
    input[type="submit"], input[type="button"] {
        background-color: #8e44ad; /* 보라색 배경색 */
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        margin: 10px 5px;
        transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover, input[type="button"]:hover {
        background-color: #6c3483;
    }
</style>
<script>
    $(document).ready(function() {
        // 서버에서 전달된 errorMessage가 있는 경우 alert으로 표시
        const errorMessage = "${errorMessage}";
        if (errorMessage) {
            alert(errorMessage);
        }
        
        // 폼 제출 시 생년월일 필드가 비어있는지 확인
        $("form").submit(function() {
            const year = $("select[name='year']").val();
            const month = $("select[name='month']").val();
            const day = $("select[name='day']").val();
            
            if (year === "" || month === "" || day === "") {
                alert("생년월일을 모두 선택해주세요.");
                return false; // 폼 제출 방지
            }
        });
    });
</script>
</head>
<body>
    <div class="find-id-container">
        <h3>사원번호 찾기</h3>
        <hr/>
        <form action="findNumber.do" method="post">
            <table>
                <tr>
                    <th style="width: 100px;">이름</th>
                    <td><input type="text" name="emp_name" placeholder="이름을 입력하세요" required></td>
                </tr>
                <tr>
                    <th>생년월일</th>
                    <td>
                        <select name="year" required>
                            <option value="">년도</option>
                            <c:forEach begin="1900" end="2023" var="year">
                                <option value="${year}">${year}</option>
                            </c:forEach>
                        </select>
                        <select name="month" required>
                            <option value="">월</option>
                            <c:forEach begin="1" end="12" var="month">
                                <option value="${month}">${month}</option>
                            </c:forEach>
                        </select>
                        <select name="day" required>
                            <option value="">일</option>
                            <c:forEach begin="1" end="31" var="day">
                                <option value="${day}">${day}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="사원번호 찾기" />
                        <input type="button" value="취소" onclick='location.href="./login.go"'/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
