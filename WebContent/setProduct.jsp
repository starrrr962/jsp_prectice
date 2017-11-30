<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>product set page</title>
<style>
form {
	margin: auto;
	text-align: center;
	border: 1px solid gray;
	width: 400px;
}

#cloth {
	float: right;
}

#book {
	float: left;
}

section {
	margin: auto;
	width: 850px;
}

table {
	margin: auto;
}

.button {
	margin-top: 10px;
	margin-bottom: 10px;
	width: 100px;
	height: 40px;
	color: #59220d;
}
</style>
</head>
<script>
	function chknum(chk) {
		if (isNaN(chk.value)) {
			alert("숫자만 입력하세요.");
			chk.value = "";
			chk.focus();
		}
	}
	
	function chktext(chk) {
		if(chk.code.value.length<5||chk.code.value.length>10){
			alert("코드명은 5자 이상, 10자 미만으로 설정해주세요.");
			chk.code.value = "";
			chk.code.focus();
			return false;
		}
		if(isNaN(chk.code.value.substring(0,1))==false){
			alert("코드명은 숫자로 시작할 수 없습니다.");
			chk.code.value = "";
			chk.code.focus();
			return false;
		}
		if(chk.name.value.trim()==""){
			alert("제품명은 필수 입력사항입니다.");
			chk.name.value = "";
			chk.name.focus();
			return false;
		}else if(chk.price.value.trim()==""){
			alert("가격은 필수 입력사항입니다.");
			chk.price.value = "";
			chk.price.focus();
			return false;
		}
	}
	
</script>
<body>
	<section>
	<h1 align="center">상품등록</h1>
	<form action="bookInfoServer.jsp" method="post" id="book" onsubmit="return chktext(this)">
		<h2>책정보</h2>
		<table>
			<tr>
				<td><label for="code">코드명</label></td>
				<td><input type="text" name="code" id="code" ></td>
			</tr>
			<tr>
				<td><label for="name">제품명</label></td>
				<td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<td><label for="price">가격</label></td>
				<td><input type="text" name="price" id="price"
					onblur="chknum(this)"></td>
			</tr>
			<tr>
				<td><label for="page">페이지수</label></td>
				<td><input type="text" name="page" id="page"
					onblur="chknum(this)"></td>
			</tr>
			<tr>
				<td><label for="writer">저자</label></td>
				<td><input type="text" name="writer" id="writer"></td>
			</tr>
		</table>
		<input type="submit" value="전송" class="button"> <input
			type="reset" value="취소" class="button">
	</form>
	<form action="clothInfoServer.jsp" method="post" id="cloth" onsubmit="return chktext(this)">
		<h2>옷정보</h2>
		<table>
			<tr>
				<td><label for="code">코드명</label></td>
				<td><input type="text" name="code" id="code"></td>
			</tr>
			<tr>
				<td><label for="name">제품명</label></td>
				<td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<td><label for="price">가격</label></td>
				<td><input type="text" name="price" id="price"
					onblur="chknum(this)"></td>
			</tr>
			<tr>
				<td><label for="size">사이즈</label></td>
				<td><input type="text" name="size" id="size"></td>
			</tr>
			<tr>
				<td><label for="color">색상</label></td>
				<td><input type="text" name="color" id="color"></td>
			</tr>
		</table>
		<input type="submit" value="전송" class="button"> <input
			type="reset" value="취소" class="button">
	</form>
	</section>
</body>
</html>