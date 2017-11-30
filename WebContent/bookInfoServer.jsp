<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="book" class="mall.BookInfo" scope="request" />
<jsp:setProperty property="*" name="book" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
form {
	margin: auto;
	text-align: center;
	border: 1px solid gray;
	width: 400px;
}
</style>
</head>
<body>
<form>
	<h2>책 상품 정보확인</h2>
	<jsp:include page="productInfo.jsp" />
	<li>페이지수 <jsp:getProperty property="page" name="book" /></li>
	<li>저자 <jsp:getProperty name="book" property="writer" /></li>
	</ul>
</form>
</body>
</html>