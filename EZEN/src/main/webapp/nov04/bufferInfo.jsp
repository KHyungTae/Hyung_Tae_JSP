<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page buffer="8kb" autoFlush="false" %>
<!-- buffer속성을 통해 크기를 명시해주지 않아도 8kb의 buffer가 사용(기본), 사용하지 않는 경우 none으로 지정  -->
<!-- autoflush 속성은 출력 결과가 버퍼에 가득찼을 경우 true인 경우 버퍼가 가득차면 버퍼의 내용을 클라이언트로 전달하고 버퍼를 비우게 된다. -->
<!-- 한편 false인 경우 버퍼가 다 찼을 때 IOException(입출력 예외)을 발생시키고 작업을 중단한다. -->
<html>
<head><title>버퍼 정보</title></head>
<body>

버퍼 크기: <%= out.getBufferSize() %> <br>
남은 크기: <%= out.getRemaining() %> <br>
auto flush: <%= out.isAutoFlush() %> <br>

</body>
</html>