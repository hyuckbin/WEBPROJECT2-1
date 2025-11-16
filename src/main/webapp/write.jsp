<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>새 글 작성</title>
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
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; margin-bottom: 5px; }
        .form-group input[type="text"] { width: 100%; padding: 8px; box-sizing: border-box; }
        .form-group textarea { width: 100%; padding: 8px; box-sizing: border-box; }
    </style>
</head>
<body>

<div class="container">
    <h1 class="text-center">새 글 작성 (Create)</h1>

    <form action="write_ok.jsp" method="post">
        <div class="form-group">
            <label for="author">작성자 (author):</label>
            <input type="text" id="author" name="author" required>
        </div>
        <div class="form-group">
            <label for="title">제목 (title):</label>
            <input type="text" id="title" name="title" required>
        </div>
        <div class="form-group">
            <label for="content">내용 (content):</label>
            <textarea id="content" name="content" rows="10"></textarea>
        </div>

        <div class="text-center">
            <input type="submit" value="작성 완료" class="btn">
            <a href="list.jsp" class="btn" style="background-color: #6c757d;">목록으로</a>
        </div>
    </form>

</div>

</body>
</html>