<%@ page contentType="text/html; charset=euc-kr"%>
<html>
<head><title>out 기본 객체 사용</title></head>
<body>
<!-- out 기본 객체는 JSP페이지의 복잡한 코드를 간단하게 표시할 수 있다. -->
<%  //스크립트릿에서도 out.println(print)를 사용할 수 있다. 출력결과는 out을 쓴것과 안쓴것과 같다.
	out.println("안녕하세요?");
%>
<br>
out 기본 객체를 사용하여
<%
	out.println("출력한 결과입니다.");
%>
</body>
</html>

