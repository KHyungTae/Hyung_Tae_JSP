<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>잘못된 타입 값 할당</title></head>  <!-- 타입변환 -->
<body>

<%
	int value = 3.2098e3; //int타입에 실수를 넣으면 당연히 에러가 발생한다.
%>
값 = <%= value %>

</body>
</html>