<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>�� ����</title></head>
<body>

���� �����͸� �Է��� �� [����] ��ư�� Ŭ���ϼ���.
<!-- �Է��� �����͸� ������ JSP �������� �Ʒ� ��η� �����ϰ�, post����� ���� -->
<form action="/EZEN/nov03/viewParameter.jsp" method="post">
<!-- �̸��� name�� ��û �Ķ���� �Է� �ڽ� -->
�̸�: <input type="text" name="name" size="10"> <br>
<!-- �̸��� address�� ��û �Ķ���� �Է� �ڽ� -->
�ּ�: <input type="text" name="address" size="30"> <br>
�����ϴ� ����:  <!-- �̸��� pet�� ��û �Ķ���� üũ �ڽ� -->
	<input type="checkbox" name="pet" value="dog">������
	<input type="checkbox" name="pet" value="cat">�����
	<input type="checkbox" name="pet" value="pig">���� 
<br>
<input type="submit" value="����">
</form>
</body>
</html>