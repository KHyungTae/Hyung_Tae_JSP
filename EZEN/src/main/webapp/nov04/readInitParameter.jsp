<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.util.Enumeration" %>
<html>
<head><title>�ʱ�ȭ �Ķ���� �о����</title></head>
<body>

�ʱ�ȭ �Ķ���� ���:
<ul>
<%  //�̸��� logEnabled�̰� ���� "true"�� �ʱ�ȭ �Ķ���� �߰�
	Enumeration initParamEnum = application.getInitParameterNames();
	while(initParamEnum.hasMoreElements()) {  //hasMoreElements()�޼���� ��� ��ü�� ��ȯ�Ҷ����� �ݺ�
		String initParamName = (String)initParamEnum.nextElement(); 
	                                               //nextElement()�� Ŀ���� ���� ��Ҹ� ����Ű���� �����ϰ� �ش� ��ġ�� ��Ҹ� ��ȯ
%>
<li><%= initParamName %> =   <!-- �̸��� debugLevel�̰� ���� "5"�� �ʱ�ȭ �Ķ���� �߰� -->
	<%= application.getInitParameter(initParamName) %>
<%
	}
%>
</ul>
</body>
</html>