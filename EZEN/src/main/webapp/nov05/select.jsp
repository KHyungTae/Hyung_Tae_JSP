<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>옵션 선택 화면</title></head>
<body>

<form action="<%= request.getContextPath() %>/nov05/view.jsp">

보고 싶은 페이지 선택:
	<select name="code">
		<option value="A">A페이지</option>
		<option value="B">B페이지</option>
		<option value="C">C페이지</option>
	</select>
	
<input type="submit" value="이동">
</form>

</body>
</html>