<%@ page contentType = "text/html; charset=utf-8" %>  <!-- (클라이언트받은값)응답결과는 utf-8로 생성하고 -->
<%@ page pageEncoding = "euc-kr" %>  <!-- (해당작성페이지)페이지에는 euc-kr을 만들다 -->
<%@ page import = "java.util.Date" %>
<%
	Date now = new Date();
%>
<html>
<head><title>현재 시간</title></head>
<body>
현재 시각:
<%= now %>
</body>
</html>