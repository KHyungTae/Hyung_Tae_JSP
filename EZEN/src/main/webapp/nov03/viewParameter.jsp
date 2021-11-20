<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%
	request.setCharacterEncoding("euc-kr");  //한글을 올바르게 처리하기 위해서(request객체사용할때)
%>
<html>
<head><title>요청 피라미터 출력</title></head>
<body>
<!-- 다 읽어 오지 못하고, 오직 한 개의 피라미터의 값만 읽어올 수 있다. (name파라미터와 address파라미터의 값을 출력) -->
<b>request.getParameter() 메서드 사용</b> <br>  
name 파라미터 = <%= request.getParameter("name") %> <br>  
address 파라미터 = <%= request.getParameter("address") %>
<p>
<!-- 같은 이름을 가진 모든 파라미터의 값을 읽어올 수 있다. (3개의 pet파라미터 값을 배열로 변수 values[1],values[2],values[3]형식으로 값 접근 -->
<b>request.getParametervalues() 메서드 사용</b> <br>
<%
	String[] values = request.getParameterValues("pet");
	if(values != null) {
		for(int i=0; i<values.length; i++) {
%>
	<%= values[i] %>
<% 
		}
	}
%>
<p>
<!-- 웹 브라우저가 전송한 피라미터의 이름을 구한다. 전송된 이름만 읽는다. -->
<b>request.getParameterNames() 메서드 사용</b> <br>
<%
	Enumeration paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()) {
		String name = (String)paramEnum.nextElement();
%>
		<%= name %>
<%
	}
%>
<p>
<!-- 웹 브라우저가 전송한 피라미터의 맵을 구한다. 맵은(피라미터 이름, 값)쌍으로 구성된다.ㅏ -->
<b>request.getParameterMap() 메서드 사용</b> <br>
<%
	Map parameterMap = request.getParameterMap();
	String[] nameParam = (String[])parameterMap.get("name");
	if(nameParam != null) {
%>
name = <%= nameParam[0] %>
<%
	}
%>
</body>
</html>