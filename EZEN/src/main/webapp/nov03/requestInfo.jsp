<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>Ŭ���̾�Ʈ �� ���� ����</title></head>
<body>

Ŭ���̾�ƮIP = <%= request.getRemoteAddr() %> <br> <!-- �� ������ ������ Ŭ���̾�Ʈ�� IP�ּҸ� ���Ѵ�. -->
��û������ = <%= request.getContentLength() %> <br> <!-- Ŭ���̾�Ʈ�� ������ ��û ������ ���̸� ���Ѵ�. -->
��û���� ���ڵ� = <%= request.getCharacterEncoding() %> <br> <!-- Ŭ���̾�Ʈ�� ��û ������ ������ �� ����� ĳ������ ���ڵ��� ���Ѵ�. -->
��û���� ����ƮŸ�� = <%= request.getContentType() %> <br> <!-- Ŭ���̾�Ʈ�� ��û ������ ������ �� ����� ����Ʈ�� Ÿ���� ���Ѵ�. -->
��û���� �������� = <%= request.getProtocol() %> <br> <!-- Ŭ���̾�Ʈ�� ��û�� ���������� ���Ѵ�. -->
��û���� ���۹�� = <%= request.getMethod() %> <br> <!-- �� �������� ������ ������ �� ����� ����� ���Ѵ�. -->
��û URI = <%= request.getRequestURI() %> <br> <!-- �� �������� ��û�� URI���� ��θ� ���Ѵ�. -->
���ؽ�Ʈ ��� = <%= request.getContextPath() %> <br> <!-- JSP�������� ���� �� ���ø����̼��� ���ؽ�Ʈ ��θ� ���Ѵ�. -->
�����̸� = <%= request.getServerName() %> <br> <!-- ������ �� ����� �����̸��� ���Ѵ�. -->
������Ʈ = <%= request.getServerPort() %> <br> <!-- ������ ���� ���� ��Ʈ ��ȣ�� ���Ѵ�. -->

</body>
</html>