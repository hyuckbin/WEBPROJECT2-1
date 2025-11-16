<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

<%
    // ==========================================================
    // 1. Mock Data (상세보기)
    // ==========================================================

    // list.jsp에서 ?id=1, ?id=2 ... 처럼 넘겨준 id 값을 받습니다.
    String id = request.getParameter("id");

    // DB에서 id값을 기준으로 데이터를 1건 조회했다고 "가정"합니다.
    // 실제로는 id값에 따라 다른 내용을 보여줘야 하지만,
    // Mock Data 단계에서는 어떤 id가 오든 같은 데이터를 보여줘도 됩니다.

    Map<String, String> post = new HashMap<>();
    post.put("id", id); // 전달받은 id
    post.put("title", "ID " + id + "번 글의 Mock 제목입니다.");
    post.put("author", "작성자 " + id);
    post.put("created_at", "2025-11-13 12:00");
    post.put("content", "ID " + id + "번 글의 Mock 내용입니다.\n" +
            "JSP 페이지에서 상세 내용을 보여주고 있습니다.\n" +
            "DB 연동은 아직 하지 않았습니다.");
%>

<html>
<head>
    <title>게시글 상세 보기</title>
    <style>
        /* list.jsp와 동일한 스타일 사용 */
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
        .post-header { border-bottom: 2px solid #f2f2f2; padding-bottom: 10px; }
        .post-info { color: #6c757d; font-size: 0.9em; }
        .post-content { padding: 20px 0; min-height: 150px; }
        .post-actions { text-align: right; border-top: 1px solid #eee; padding-top: 20px; }
    </style>
</head>
<body>

<div class="container">

    <div class="post-header">
        <h2><%= post.get("title") %></h2>
        <div class="post-info">
            작성자: <%= post.get("author") %> | 작성일: <%= post.get("created_at") %>
        </div>
    </div>

    <div class="post-content">
        <pre><%= post.get("content") %></pre>
    </div>

    <div class="post-actions">
        <a href="edit.jsp?id=<%= post.get("id") %>" class="btn" style="background-color: #ffc107;">
            수정 (edit)
        </a>

        <a href="delete_ok.jsp?id=<%= post.get("id") %>" class="btn" style="background-color: #dc3545;">
            삭제 (delete)
        </a>

        <a href="list.jsp" class="btn" style="background-color: #6c757d;">
            목록으로
        </a>
    </div>

</div>

</body>
</html>