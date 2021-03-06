<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URL" %>
<html>
<head><title>application 기본 객체 사용하여 자원 읽기2</title></head>
<body>

<%
	String resourcePath = "/nov04/message/notice/notice.txt";

	BufferedReader br = null;
	char[] buff = new char[512];
	int len = -1;
	
	try {
		URL url = application.getResource(resourcePath);  //지정한 경로에 해당하는 자원과 관련된 URL객체 생성
		
		br = new BufferedReader(
			new InputStreamReader(
				url.openStream() ));  //url.openSteram()메서드를 사용하여 자원으로부터 데이터를 읽어오는 InputStream생성
		while((len = br.read(buff)) != -1) {
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