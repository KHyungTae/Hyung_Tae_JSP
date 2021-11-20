<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.io.*" %>
<html>
<head><title>application 기본 객체 사용하여 자원 읽기</title></head>
<body>

<%
	String resourcePath = "/nov04/message/notice/notice.txt";  //웹 어플리케이션 내에서의 경로 사용
%>
자원의 실제 경로:<br>
<%= application.getRealPath(resourcePath) %>  <!-- application.getRealPath()는 자원의 실제 경로 구함 -->
<br>
----------<br>
<%= resourcePath %>의 내용<br>
----------<br>
<%
	BufferedReader br = null;
	char[] buff = new char[512];
	int len = -1;
	
	try {
		br = new BufferedReader(
			new InputStreamReader(
				application.getResourceAsStream(resourcePath) ));  //자원으로부터 데이터를 읽어오는 스트림을 생성
		while((len = br.read(buff)) != -1) {  //while문 스트림으로부터 데이터를 읽어와 출력
			out.print(new String(buff, 0, len));
		}
	} catch(IOException ex) {
		out.println("예외 발생: " + ex.getMessage());
	} finally {
		if(br != null) try {br.close();} catch(IOException ex) {}
	}
%>

</body>
</html>