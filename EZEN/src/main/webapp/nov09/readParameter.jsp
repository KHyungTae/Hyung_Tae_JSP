<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page errorPage="/nov09/error/viewErrorMessage.jsp" %>
<html>
<head><title>�Ķ���� ���</title></head>
<body>

name �Ķ���� ��: <%= request.getParameter("name").toUpperCase() %>

</body>
</html>