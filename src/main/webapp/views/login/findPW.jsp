<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
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
    .change-pw-container {
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
        vertical-align: middle;
    }
    input[type="password"], input[type="text"] {
        width: calc(100% - 22px);
        padding: 10px;
        margin-top: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"], input[type="button"] {
        background-color: #8e44ad;
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
    .password-match {
        font-size: 14px;
        margin-top: 5px;
        display: none;
    }
    .match {
        color: green;
    }
    .mismatch {
        color: red;
    }
</style>
<script>
    $(document).ready(function() {
        const errorMessage = "${errorMessage}";
        if (errorMessage) {
            alert(errorMessage);
        }

        $("form").submit(function() {
            const newPassword = $("input[name='new_password']").val();
            const confirmPassword = $("input[name='confirm_password']").val();

            if (newPassword !== confirmPassword) {
                alert("새 비밀번호가 일치하지 않습니다.");
                return false;
            }
        });

        $("input[name='new_password'], input[name='confirm_password']").on('keyup', function() {
            const newPassword = $("input[name='new_password']").val();
            const confirmPassword = $("input[name='confirm_password']").val();

            if (newPassword && confirmPassword) {
                if (newPassword === confirmPassword) {
                    $("#password-match-status").text("비밀번호가 일치합니다.").removeClass("mismatch").addClass("match").show();
                } else {
                    $("#password-match-status").text("비밀번호가 일치하지 않습니다.").removeClass("match").addClass("mismatch").show();
                }
            } else {
                $("#password-match-status").hide();
            }
        });
    });
    var msg = '${msg}';
    if (msg != "") {
        alert(msg);
    }
</script>
</head>
<body>
    <div class="change-pw-container">
        <h3>비밀번호 변경</h3>
        <hr/>
        <form action="/findPW.do" method="post">
            <table>
                <tr>
                    <th style="width: 150px;">사원번호</th>
                    <td><input type="text" name="emp_id" placeholder="사원번호를 입력하세요" required></td>
                </tr>
                <tr>
                    <th>사원 이름</th>
                    <td><input type="text" name="emp_name" placeholder="사원 이름을 입력하세요" required></td>
                </tr>
                <tr>
                    <th>현재 비밀번호</th>
                    <td><input type="password" name="current_password" placeholder="현재 비밀번호를 입력하세요" required></td>
                </tr>
                <tr>
                    <th>새 비밀번호</th>
                    <td><input type="password" name="new_password" placeholder="새 비밀번호를 입력하세요" required></td>
                </tr>
                <tr>
                    <th>비밀번호 확인</th>
                    <td>
                        <input type="password" name="confirm_password" placeholder="비밀번호를 다시 입력하세요" required>
                        <div id="password-match-status" class="password-match"></div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="비밀번호 변경" />
                        <input type="button" value="취소" onclick='location.href="./login.go"'/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
