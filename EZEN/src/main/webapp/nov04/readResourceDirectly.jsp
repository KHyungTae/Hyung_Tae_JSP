<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.io.*" %>
<html>
<head><title>���� ��� ����Ͽ� �ڿ� �б�</title></head>
<body>

<% 
	FileReader fr = null;
	char[] buff = new char[512];
	int len = -1;
	
	try {
		fr = new FileReader(  //notice.txt�κ��� ������ �о���� FileReader����. ���� �����θ� ���
				"C:\\Java\\App\\EZEN\\src\\main\\webapp\\nov04\\message\\notice\\notice.txt");
				
		while((len = fr.read(buff)) != -1) {  //notice.txt�κ��� �о�� �����͸� out �⺻��ü�� ����Ͽ� ���������� ���
			out.print(new String(buff, 0, len));
		}
	} catch(IOException ex) {
		out.println("���� �߻�: " + ex.getMessage());
	} finally {
		if(fr != null) try { fr.close(); } catch(IOException ex) {}  //13���ο��� ������ FileReader�� �����Ѵ�.
	}
%>
</body>
</html>