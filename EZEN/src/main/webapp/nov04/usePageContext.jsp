<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>pageContext �⺻ ��ü</title></head>
<body>

<%//getRequest()�� ���� Ÿ���� servletRequest�ε�, HTTP��û�� ó���ϴ� ��� HttpServletRequest�� ����ȯ�� �� �Ŀ� ����ؾ��Ѵ�(Ÿ�Ժ�ȯ)
	HttpServletRequest httpRequest = 
		(HttpServletRequest)pageContext.getRequest();
%>

request �⺻ ��ü�� pageContext.getRequest()�� ���Ͽ���:
<!-- request�⺻��ü�� pageContext.getRequest()�� ���� ���� ���� ��ü������ �˻� -->
<%= request == httpRequest %>

<br>

pageContext.getOut() �޼��带 ����� ������ ���:

<% 
//pageContext.getOut().println()�� out.println()�� �����ϴ�.
pageContext.getOut().println("�ȳ��ϼ���!"); 

%>
</body>
</html>