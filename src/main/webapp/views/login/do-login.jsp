<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>가구있슈 로그인</title>
<style>
html, body {
	height: 100%;
    margin: 0;
}
.container {
	display: flex;
	flex-direction: row;
	
	position: relative;
	width: 100%;
	height: 100%;
}
.back1 {
	position: relative;
	width: 60%;
	
	background-image: url('/img/login_1.jpg');
    background-size: cover;
    background-position: center;
}
.back2 {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	
	position: relative;
	width: 40%;
	background-image: url('/img/login_2.jpg');
    background-size: cover;
    background-position: center;
}
.logo {
	display: flex;
	align-items: flex-start;
	justify-content: flex-start;
	
	position: relative;
	width: 70%;
	
	margin-bottom: 20px;
}
.logo-img {
	height: 80px;
}
.loginDiv {
	display: flex;
	align-items: center;
	justify-content: center;
	
	position: relative;
	width: 70%;
	height: 55%;
	
	background-color: white;
	border-radius: 10px;
	
	box-shadow: 0 0 15px rgb(204, 207, 215);
}
.loginDiv-main {
	position: relative;
	width: 80%;
}
.loginDiv-main h4 {
	margin: 5px 0;
	font-size: 25px;
}
.pMargin {
	margin-top: 0;
	margin-bottom: 40px;
}
.loginDiv-main p{
	color: darkgray;
}

.loginDiv-main-id, .loginDiv-main-pw {
	display: flex;
	flex-direction: column;
	
	margin-top: 20px;
	gap: 5px;
}
.inputCss {
	position: relative;
	width: 100%;
	height: 30px;
	
	/* background-color: rgba(122, 112, 186, 0.5) !important; */
	border: 2px dotted rgb(191, 191, 232);
	border-radius: 5px;
}
/* 자동 완성 스타일 재정의 */
input:-webkit-autofill,
input:-webkit-autofill:hover,
input:-webkit-autofill:focus,
input:-webkit-autofill:active {
    -webkit-box-shadow: 0 0 0px 1000px rgba(244, 243, 252) inset !important;
    box-shadow: 0 0 0px 1000px rgba(244, 243, 252) inset !important;
    -webkit-text-fill-color: #000 !important;
    transition: background-color 5000s ease-in-out 0s !important;
}

.loginDiv-main-bottom {
	display: flex;
	flex-direction: column;
	gap: 30px;
	
	margin-top: 10px;
	margin-bottom: 20px;
	
}
.loginBtn {
	width: 100%;
	background-color: #7a70ba; 
	color: white;
	height: 35px;
	border-radius: 5px;
	border: none;
	font-size: 18px;
}
.loginBtn:hover {
	background-color: #7a70ba; 
}

.pMargin2 {
	margin: 30px 0;
}
</style>
</head>
<body>
	<div class="container">
		<div class="back1"></div>
		<div class="back2">
			<div class="logo">
				<img class="logo-img" src="/img/login_logo3.png"/>
			</div>
			<div class="loginDiv">
				<div class="loginDiv-main">
					<form class="" action="login.do" method="post">
						<h4>Sign in to account</h4>
                  		<p class="pMargin">Enter your ID & Password to login</p>
						<div class="loginDiv-main-id">
		                    <label>ID</label>
		                    <input type="text" name="emp_id" class="inputCss" required="" placeholder="ID">
		                </div>
						<div class="loginDiv-main-pw">
		                    <label>Password</label>
		                    <input type="password" class="inputCss" name="emp_pw" required="" placeholder="*****">
		                </div>
		                <div class="loginDiv-main-bottom">
		                    <div class="">
		                      <input id="checkbox1" type="checkbox">
		                      <label class="" for="checkbox1">Remember password</label>
		                    </div>
		                	<button class="loginBtn" type="submit">Sign in</button>
                  		</div>
                  		<p class="pMargin2">Did you forget your ID or password?<a class="" href="./findPW.go">Find</a></p>
					</form>
				</div>
			</div>
		</div>
	</div>
    <!-- <div class="login-container">
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
                    <td colspan="3" style="text-align: center;"> 나머지 버튼들을 포함한 버튼 컨테이너
                        <input type="button" value="사원번호 찾기" class="small-button" onclick='location.href="./findNumber.go"' style="margin-right: 10px;">
                        <input type="button" value="비밀번호 찾기" class="small-button" onclick='location.href="./findPW.go"'>
                        <input type="button" onclick='location.href="./joinForm.go"' value="회원가입">
                    </td>
                </tr>
            </table>
        </form>
    </div> -->
    
</body>
<script>
    var msg = '${msg}';
    if(msg != ""){
        alert(msg);
    }
</script>
</html>
