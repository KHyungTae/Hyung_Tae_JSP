<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.util.Enumeration" %>
<html>
<head><title>application �⺻ ��ü �Ӽ� ����</title></head>
<body>

<%
	Enumeration attrEnum = application.getAttributeNames();  //�Ӽ��� �̸� ����� ���Ѵ�.
	while(attrEnum.hasMoreElements()) {  //��� ��ü�� ��ȯ�Ҷ����� �ݺ�.
			String name = (String)attrEnum.nextElement();   //getAttribute()�Ӽ��� ��������, setAttribute()�Ӽ��� ���� ����
			Object value = application.getAttribute(name);  //�̸��� name�� �Ӽ��� ���� ���Ѵ�. ������ �̸��� �Ӽ��� ������� null����
%>
application �Ӽ� : <b><%= name %></b> = <%= value %> <br>
<%
	}
%>

</body>
</html>