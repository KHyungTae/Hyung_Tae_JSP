<%@ page contentType="text/html; charset=euc-kr" %>
<%
	String name = request.getParameter("name"); //application기본객체에 설정할 속성이름으로 사용할 파라미터를 읽어온다.
	String value = request.getParameter("value"); //application기본객체에 설정할 속성값으로 사용할 파라미터를 읽어온다.
	
	if(name != null && value != null) {
		application.setAttribute(name, value);  //application기본객체에 속성을 설정
		                                        //파라미터로 전달받은 값을 속성이름과 값으로 사용한다.
	}
%>

<html>
<head><title>application 속성 지정</title></head>
<body>

<%
	if(name != null && value != null) {
%>
application 기본 객체의 속성 설정:
	<%= name %> = <%= value %>
<%
	} else {
%>
application 기본 객체의 속성 설정 안함
<%
	}
%>
</body>
</html>