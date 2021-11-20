<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.util.Enumeration" %>
<html>
<head><title>초기화 파라미터 읽어오기</title></head>
<body>

초기화 파라미터 목록:
<ul>
<%  //이름이 logEnabled이고 값이 "true"인 초기화 파라미터 추가
	Enumeration initParamEnum = application.getInitParameterNames();
	while(initParamEnum.hasMoreElements()) {  //hasMoreElements()메서드는 모든 객체를 반환할때까지 반복
		String initParamName = (String)initParamEnum.nextElement(); 
	                                               //nextElement()는 커서를 다음 요소를 가리키도록 변경하고 해당 위치의 요소를 반환
%>
<li><%= initParamName %> =   <!-- 이름이 debugLevel이고 값이 "5"인 초기화 파라미터 추가 -->
	<%= application.getInitParameter(initParamName) %>
<%
	}
%>
</ul>
</body>
</html>