<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>	
	function goLogin(f){
		var id = document.getElementById("id").value.trim();
		var pwd = document.getElementById("pwd").value.trim();
		//유효성 검사
		if(id==''){
			alert("아이디를 입력해 주세요");
			return;
		}
		
		if(pwd==''){
			alert("비밀번호를 입력해주세요");
			return;
		}
		
		
	}
</script>
</head>
<body>
	<p>로그인</p>
	<form method="POST" action="########">
		<div>
			<label>아이디</label>
			<input type="text" name="id" id="id">
		</div>
		<div>
			<label>비밀번호</label>
			<input type="password" name="pwd" id="pwd">
		</div>
		<div>			
			<input type="button" value="로그인" onclick="goLogin(this.form)">
			<input type="button" value="회원가입" onclick="location.href='joinView.do'">
		</div>
		<div>
			<a href="" target="_blank">아이디 찾기</a>
			<a href="" target="_blank">비밀번호 찾기</a>
		</div>
	</form>
</body>
</html>