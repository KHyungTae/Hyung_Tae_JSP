<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>타입 변환시 값 손실 예제</title></head>
<body>

<%  //큰 범위를 갖는 타입의 값을 작은 범위를 갖는 타입에 저장하기 위해 타입 변환 할때에는 값의 손실 가능성에 유의해야한다.
	int val = 45000;
	short val2 = (short) val;
%>
<%= val %> 값을 short 타입으로 변환한 결과 -> <%= val2 %>

</body>
</html>