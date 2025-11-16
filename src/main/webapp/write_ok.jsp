<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>작성 완료</title>
    <style>
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
    <h1>폼 데이터 수신 완료 (Mock)</h1>

    <%
        // ★ POST 방식 한글 깨짐 방지
        request.setCharacterEncoding("UTF-8");

        // write.jsp의 'name' 속성값으로 데이터를 받음
        String author = request.getParameter("author");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
    %>

    <p>Mock DB에 아래와 같이 저장되었다고 가정합니다.</p>
    <hr>
    <p><strong>작성자:</strong> <%= author %></p>
    <p><strong>제목:</strong> <%= title %></p>
    <p><strong>내용:</strong></p>
    <pre><%= content %></pre>
    <hr>

    <a href="list.jsp" class="btn">목록으로 돌아가기</a>
</div>

</body>
</html>