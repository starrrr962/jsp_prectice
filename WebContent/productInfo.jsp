<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="product" class="mall.ProductInfo" scope="request" />
<jsp:setProperty property="*" name="product" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li><label>코드명 </label><jsp:getProperty name="product"
				property="code" /></li>
		<li><label>제품명 </label><jsp:getProperty name="product"
				property="name" /></li>
		<li><label>가격 </label><jsp:getProperty name="product"
				property="price" /></li>
</body>
</html>
