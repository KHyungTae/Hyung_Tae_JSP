<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page buffer="8kb" autoFlush="false" %>
<!-- buffer�Ӽ��� ���� ũ�⸦ ��������� �ʾƵ� 8kb�� buffer�� ���(�⺻), ������� �ʴ� ��� none���� ����  -->
<!-- autoflush �Ӽ��� ��� ����� ���ۿ� ����á�� ��� true�� ��� ���۰� �������� ������ ������ Ŭ���̾�Ʈ�� �����ϰ� ���۸� ���� �ȴ�. -->
<!-- ���� false�� ��� ���۰� �� á�� �� IOException(����� ����)�� �߻���Ű�� �۾��� �ߴ��Ѵ�. -->
<html>
<head><title>���� ����</title></head>
<body>

���� ũ��: <%= out.getBufferSize() %> <br>
���� ũ��: <%= out.getRemaining() %> <br>
auto flush: <%= out.isAutoFlush() %> <br>

</body>
</html>