<%@ page contentType="text/html; charset=euc-kr" %>
<%
	request.setCharacterEncoding("euc-kr");  
//캐릭터 셋을 지정해 주지 않으면 jsp:param으로 설정한 값이 올바르게 전달되지 않는다.
%>
<html>
<head><title>INFO</title></head>
<body>

include 전 name 파라미터 값: <%= request.getParameter("name") %>

<hr>

<jsp:include page="body_sub.jsp" flush="false">
	<jsp:param name="name" value="최범균" />
</jsp:include>

<hr/>

include 후 name 파라미터 값: <%= request.getParameter("name") %>

</body>
</html>