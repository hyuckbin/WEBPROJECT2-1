<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>삭제 완료</title>
    <style>
        /* write_ok.jsp와 동일한 스타일 사용 */
        body { font-family: sans-serif; margin: 20px; }
        .container { width: 80%; margin: auto; padding: 20px; border: 1px solid #ddd; }
        .btn {
            background-color: #007bff;
            color: white;
            padding: 8px 12px;
            text-decoration: none;
            border-radius: 4px;
        }
    </style>
</head>
<body>

<div class="container">

    <%
        // view.jsp에서 ?id=1 처럼 넘겨준 id 값을 받습니다.
        String id = request.getParameter("id");
    %>

    <h1>ID <%= id %>번 글 삭제 완료 (Mock)</h1>

    <p>ID <%= id %>번 글이 Mock DB에서 성공적으로 삭제되었다고 가정합니다.</p>
    <hr>

    <a href="list.jsp" class="btn">목록으로 돌아가기</a>
</div>

</body>
</html>