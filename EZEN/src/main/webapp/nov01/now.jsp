<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.util.Date" %>
<%
	Date now = new Date();
%>
<!DOCTYYPE html>
<html>
	<head><title>현재시간</title></head>
	<body>
	  현재 시간:
	  <%= now %>
	</body>
</html>