<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.io.*" %>
<html>
<head><title>application �⺻ ��ü ����Ͽ� �ڿ� �б�</title></head>
<body>

<%
	String resourcePath = "/nov04/message/notice/notice.txt";  //�� ���ø����̼� �������� ��� ���
%>
�ڿ��� ���� ���:<br>
<%= application.getRealPath(resourcePath) %>  <!-- application.getRealPath()�� �ڿ��� ���� ��� ���� -->
<br>
----------<br>
<%= resourcePath %>�� ����<br>
----------<br>
<%
	BufferedReader br = null;
	char[] buff = new char[512];
	int len = -1;
	
	try {
		br = new BufferedReader(
			new InputStreamReader(
				application.getResourceAsStream(resourcePath) ));  //�ڿ����κ��� �����͸� �о���� ��Ʈ���� ����
		while((len = br.read(buff)) != -1) {  //while�� ��Ʈ�����κ��� �����͸� �о�� ���
			out.print(new String(buff, 0, len));
		}
	} catch(IOException ex) {
		out.println("���� �߻�: " + ex.getMessage());
	} finally {
		if(br != null) try {br.close();} catch(IOException ex) {}
	}
%>

</body>
</html>