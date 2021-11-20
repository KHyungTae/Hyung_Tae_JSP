<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%
	request.setCharacterEncoding("euc-kr");  //�ѱ��� �ùٸ��� ó���ϱ� ���ؼ�(request��ü����Ҷ�)
%>
<html>
<head><title>��û �Ƕ���� ���</title></head>
<body>
<!-- �� �о� ���� ���ϰ�, ���� �� ���� �Ƕ������ ���� �о�� �� �ִ�. (name�Ķ���Ϳ� address�Ķ������ ���� ���) -->
<b>request.getParameter() �޼��� ���</b> <br>  
name �Ķ���� = <%= request.getParameter("name") %> <br>  
address �Ķ���� = <%= request.getParameter("address") %>
<p>
<!-- ���� �̸��� ���� ��� �Ķ������ ���� �о�� �� �ִ�. (3���� pet�Ķ���� ���� �迭�� ���� values[1],values[2],values[3]�������� �� ���� -->
<b>request.getParametervalues() �޼��� ���</b> <br>
<%
	String[] values = request.getParameterValues("pet");
	if(values != null) {
		for(int i=0; i<values.length; i++) {
%>
	<%= values[i] %>
<% 
		}
	}
%>
<p>
<!-- �� �������� ������ �Ƕ������ �̸��� ���Ѵ�. ���۵� �̸��� �д´�. -->
<b>request.getParameterNames() �޼��� ���</b> <br>
<%
	Enumeration paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()) {
		String name = (String)paramEnum.nextElement();
%>
		<%= name %>
<%
	}
%>
<p>
<!-- �� �������� ������ �Ƕ������ ���� ���Ѵ�. ����(�Ƕ���� �̸�, ��)������ �����ȴ�.�� -->
<b>request.getParameterMap() �޼��� ���</b> <br>
<%
	Map parameterMap = request.getParameterMap();
	String[] nameParam = (String[])parameterMap.get("name");
	if(nameParam != null) {
%>
name = <%= nameParam[0] %>
<%
	}
%>
</body>
</html>