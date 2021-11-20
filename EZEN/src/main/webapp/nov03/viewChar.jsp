<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>char 타입 사용 예</title></head>
<body>

<%
	char ch ='한';
%>
변수에 저장해서 사용: <%= ch %>
<br>
표형식에서 직접 사용: <%= '\ucd08' %> <%= '\uae30' %> <%= '\ud654' %>  <!-- JSP페이지에서 유니코드를 사용 --> 

</body>
</html>