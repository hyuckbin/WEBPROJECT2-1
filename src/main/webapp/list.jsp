<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

<%
    // ==========================================================
    // 1. Mock Data (가짜 데이터) 생성 (DB 연동 대신 사용)
    // =Method
    List<Map<String, String>> boardList = new ArrayList<>();

    // 가짜 글 1 (DB에서 가져왔다고 가정)
    Map<String, String> post1 = new HashMap<>();
    post1.put("id", "1");
    post1.put("title", "첫 번째 Mock 데이터입니다.");
    post1.put("author", "홍길동");
    post1.put("created_at", "2025-11-13 10:00");
    post1.put("content", "이것은 가짜 내용입니다. 111");
    boardList.add(post1);

    // 가짜 글 2
    Map<String, String> post2 = new HashMap<>();
    post2.put("id", "2");
    post2.put("title", "JSP CRUD 프론트엔드 제작 중");
    post2.put("author", "이순신");
    post2.put("created_at", "2025-11-13 11:30");
    post2.put("content", "이것은 가짜 내용입니다. 222");
    boardList.add(post2);

    // 가짜 글 3
    Map<String, String> post3 = new HashMap<>();
    post3.put("id", "3");
    post3.put("title", "항목 5개 이상 테스트");
    post3.put("author", "고혁빈"); // 아까 수정한 이름으로!
    post3.put("created_at", "2025-11-13 14:15");
    post3.put("content", "이것은 가짜 내용입니다. 333");
    boardList.add(post3);
%>

<html>
<head>
    <title>게시판 목록 (Mock Data)</title>
    <style>
        /* CSS 스타일: 보기 좋게 꾸미기 (선택 사항) */
        body { font-family: sans-serif; margin: 20px; }
        table { width: 80%; border-collapse: collapse; margin: 20px auto; }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #f2f2f2; text-align: center; }
        .container { width: 80%; margin: auto; }
        .text-center { text-align: center; }
        .text-right { text-align: right; }
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
    <h1 class="text-center">게시판 목록 (Mock Data)</h1>

    <div class="text-right" style="margin-bottom: 10px;">
        <a href="write.jsp" class="btn">새 글 작성 (add)</a>
    </div>

    <table>
        <thead>
        <tr>
            <th>번호 (id)</th>
            <th>제목 (title)</th>
            <th>작성자 (author)</th>
            <th>작성일 (created_at)</th>
        </tr>
        </thead>
        <tbody>
        <%-- 2. Mock Data를 반복문(loop)으로 출력 --%>
        <% for (Map<String, String> post : boardList) { %>
        <tr>
            <td class="text-center"><%= post.get("id") %></td>
            <td>
                <a href="view.jsp?id=<%= post.get("id") %>">
                    <%= post.get("title") %>
                </a>
            </td>
            <td class="text-center"><%= post.get("author") %></td>
            <td class="text-center"><%= post.get("created_at") %></td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>

</body>
</html>