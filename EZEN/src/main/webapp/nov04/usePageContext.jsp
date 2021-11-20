<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>pageContext 기본 객체</title></head>
<body>

<%//getRequest()의 리턴 타입은 servletRequest인데, HTTP요청을 처리하는 경우 HttpServletRequest로 형변환을 한 후에 사용해야한다(타입변환)
	HttpServletRequest httpRequest = 
		(HttpServletRequest)pageContext.getRequest();
%>

request 기본 객체와 pageContext.getRequest()의 동일여부:
<!-- request기본객체와 pageContext.getRequest()의 리턴 값이 같은 객체인지를 검사 -->
<%= request == httpRequest %>

<br>

pageContext.getOut() 메서드를 사용한 데이터 출력:

<% 
//pageContext.getOut().println()은 out.println()과 동일하다.
pageContext.getOut().println("안녕하세요!"); 

%>
</body>
</html>