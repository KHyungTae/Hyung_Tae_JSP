<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>디렉티브</title></head>
<body>

<%
	int number = 10;
%>

<%@ include file="./includee.jspf" %>
<%
// include디렉티브로 includee.jspf에 dataFoler변수를 사용한다.
%>

공통변수 DATAFOLDER = "<%= dataFolder %>"

</body>
</html>