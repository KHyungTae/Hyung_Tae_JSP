<%@ page contentType="text/html; charset=euc-kr" %>
<html>
<head><title>main</title></head>
<body>

main.jsp에서 생성한 내용.
<!-- jsp:include page="포함할 JSP페이지" flush="true, false" (sub.jsp로 요청처리 흐름 이동) -->
<jsp:include page="sub.jsp" flush="false" />

include이후의 내용.

</body>
</html>