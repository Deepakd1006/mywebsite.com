<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<title>Contact</title>
<link rel="stylesheet" href="assets/css/devops-style.css"/>
</head>
<body>
<jsp:include page="header.jsp"/>
<main class="container">
  <h2>Contact Me</h2>
  <form method="post" action="contactSubmit">
    <label>Name</label>
    <input type="text" name="name" required/>
    <label>Email</label>
    <input type="email" name="email" required/>
    <label>Message</label>
    <textarea name="message" rows="5"></textarea>
    <button type="submit" class="btn">Send</button>
  </form>
</main>
<jsp:include page="footer.jsp"/>
</body>
</html>
