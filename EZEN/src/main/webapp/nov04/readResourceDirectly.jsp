<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.io.*" %>
<html>
<head><title>절대 경로 사용하여 자원 읽기</title></head>
<body>

<% 
	FileReader fr = null;
	char[] buff = new char[512];
	int len = -1;
	
	try {
		fr = new FileReader(  //notice.txt로부터 내용을 읽어오는 FileReader생성. 파일 절대경로를 사용
				"C:\\Java\\App\\EZEN\\src\\main\\webapp\\nov04\\message\\notice\\notice.txt");
				
		while((len = fr.read(buff)) != -1) {  //notice.txt로부터 읽어온 데이터를 out 기본객체를 사용하여 웹브라우저에 출력
			out.print(new String(buff, 0, len));
		}
	} catch(IOException ex) {
		out.println("에외 발생: " + ex.getMessage());
	} finally {
		if(fr != null) try { fr.close(); } catch(IOException ex) {}  //13라인에서 생성한 FileReader를 종료한다.
	}
%>
</body>
</html>