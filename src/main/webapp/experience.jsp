<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List,java.util.Map" %>
<html>
<head>
<title>Experience</title>
<link rel="stylesheet" href="assets/css/devops-style.css"/>
</head>
<body>
<jsp:include page="header.jsp"/>
<main class="container">
  <h2>Experience</h2>
  <%
    List<Map<String,String>> exps = (List<Map<String,String>>) request.getAttribute("experiences");
    if (exps != null) {
      for (Map<String,String> e : exps) {
  %>
    <div class="entry">
      <h3><%= e.get("role") %> — <%= e.get("company") %></h3>
      <p class="period"><%= e.get("period") %></p>
      <p><%= e.get("desc") %></p>
    </div>
  <%
      }
    }
  %>
</main>
<jsp:include page="footer.jsp"/>
</body>
</html>
