<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>���� ���� ���</title></head>
<body>

��������: <%= application.getServerInfo() %> <br>
���� �Ծ� ������ ����: <%= application.getMajorVersion() %> <br>  <!-- ������ ���� �κ��� ���� -->
���� �Ծ� ���̳� ����: <%= application.getMinorVersion() %>  <!-- ������ �Ҽ� �κ��� ���� -->

</body>
</html>