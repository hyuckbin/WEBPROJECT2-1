<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

<%
    // ==========================================================
    // 1. Mock Data (수정할 기존 데이터)
    // ==========================================================

    // view.jsp에서 ?id=1, ?id=2 ... 처럼 넘겨준 id 값을 받습니다.
    String id = request.getParameter("id");

    // DB에서 id값을 기준으로 기존 데이터를 1건 조회했다고 "가정"합니다.
    Map<String, String> post = new HashMap<>();
    post.put("id", id);
    post.put("title", "ID " + id + "번 글의 기존 Mock 제목");
    post.put("author", "기존 작성자 " + id);
    post.put("content", "ID " + id + "번 글의 기존 Mock 내용입니다.\n" +
            "이 내용을 수정할 수 있습니다.");
%>

<html>
<head>
    <title>게시글 수정</title>
    <style>
        /* list.jsp, write.jsp와 동일한 스타일 사용 */
        body { font-family: sans-serif; margin: 20px; }
        .container { width: 80%; margin: auto; }
        .text-center { text-align: center; }
        .btn {
            background-color: #007bff;
            color: white;
            padding: 8px 12px;
            text-decoration: none;
            border-radius: 4px;
        }
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; margin-bottom: 5px; }
        .form-group input[type="text"] { width: 100%; padding: 8px; box-sizing: border-box; }
        .form-group textarea { width: 100%; padding: 8px; box-sizing: border-box; }
    </style>
</head>
<body>

<div class="container">
    <h1 class="text-center">게시글 수정 (Update)</h1>

    <form action="edit_ok.jsp" method="post">

        <input type="hidden" name="id" value="<%= post.get("id") %>">

        <div class="form-group">
            <label for="author">작성자 (author):</label>
            <input type="text" id="author" name="author" value="<%= post.get("author") %>" required>
        </div>
        <div class="form-group">
            <label for="title">제목 (title):</label>
            <input type="text" id="title" name="title" value="<%= post.get("title") %>" required>
        </div>
        <div class="form-group">
            <label for="content">내용 (content):</label>
            <textarea id="content" name="content" rows="10"><%= post.get("content") %></textarea>
        </div>

        <div class="text-center">
            <input type="submit" value="수정 완료" class="btn" style="background-color: #28a745;">
            <a href="list.jsp" class="btn" style="background-color: #6c757d;">목록으로</a>
        </div>
    </form>

</div>

</body>
</html>