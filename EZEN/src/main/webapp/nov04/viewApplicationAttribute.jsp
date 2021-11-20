<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.util.Enumeration" %>
<html>
<head><title>application 기본 객체 속성 보기</title></head>
<body>

<%
	Enumeration attrEnum = application.getAttributeNames();  //속성의 이름 목록을 구한다.
	while(attrEnum.hasMoreElements()) {  //모든 객체를 반환할때까지 반복.
			String name = (String)attrEnum.nextElement();   //getAttribute()속성의 값을구함, setAttribute()속성의 값을 지정
			Object value = application.getAttribute(name);  //이름이 name인 속성의 값을 구한다. 지정한 이름의 속성이 없을경우 null리턴
%>
application 속성 : <b><%= name %></b> = <%= value %> <br>
<%
	}
%>

</body>
</html>