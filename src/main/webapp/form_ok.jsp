<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>폼 데이터 수신</title>
</head>
<body>
<h1>JSP 폼 데이터 받기</h1>

<%
    // ★중요★ POST 방식으로 넘어온 한글이 깨지지 않도록 인코딩 설정
    request.setCharacterEncoding("UTF-8");

    // form.html에서 name 속성값으로 데이터를 꺼냅니다.
    String userId = request.getParameter("user_id");
    String userPw = request.getParameter("user_pw");
    String gender = request.getParameter("gender");
    String intro = request.getParameter("intro");

    // ★중요★ 체크박스(hobby)는 여러 개일 수 있으므로 getParameterValues()로 받습니다.
    String[] hobbies = request.getParameterValues("hobby");
%>

<p><strong>아이디:</strong> <%= userId %>
</p>
<p><strong>비밀번호:</strong> <%= userPw %>
</p>
<p><strong>성별:</strong> <%= gender %>
</p>
<p><strong>자기소개:</strong></p>
<pre><%= intro %></pre>
<p><strong>관심사:</strong></p>
<ul>
    <%
        if (hobbies != null && hobbies.length > 0) {
            for (String hobby : hobbies) {
    %>
    <li><%= hobby %>
    </li>
    <%
        }
    } else {
    %>
    <li>선택한 관심사가 없습니다.</li>
    <%
        }
    %>
</ul>

<br>
<a href="form.html">폼으로 돌아가기</a>
</body>
</html>