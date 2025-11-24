<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width,initial-scale=1"/>
  <title>Deepak Kumar D — DevOps Portfolio</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/devops-style.css"/>
</head>
<body>
<jsp:include page="header.jsp"/>

<main class="hero-wrap">
  <!-- layered background: video on top of image. If video file missing browser ignores it. -->
  <div class="hero-bg">
    <video id="heroVideo" autoplay muted loop playsinline preload="auto">
      <source src="assets/images/hero-bg.webm" type="video/webm">
      <source src="assets/images/hero-bg.mp4" type="video/mp4">
    </video>
    <img src="assets/images/hero-bg.gif" alt="" class="hero-fallback" onerror="this.style.display='none'">
    <img src="assets/images/hero-bg.png" alt="" class="hero-fallback" onerror="this.style.display='none'">
    <div class="hero-overlay" aria-hidden="true"></div>
  </div>

  <div class="hero container">
    <div class="hero-left">
      <h1>DEEPAK KUMAR D</h1>
      <p class="tag">DevOps Engineer • AWS</p>

      <p class="lead">DevOps Engineer with 3.5 Years’ Experience | Passionate About Automation &amp; Cloud Innovation</p>
      <p class="cta">
        <a class="btn" href="resume.jsp">Download Resume</a>
        <a class="btn ghost" href="<%= request.getContextPath() %>/profile">View Experience</a>
      </p>

      <!-- ⭐ Updated Single-Line Tools Row ⭐ -->
      <p class="tech-stack">
        ☁️ AWS • 🐳 Docker • ☸️ Kubernetes (EKS) • 🛠 Terraform • 🔁 Jenkins • 📦 Ansible • 
        🔍 Prometheus &amp; Grafana • 🔐 Trivy • 🧪 SonarQube • 🐧 Linux (Ubuntu) • 🪟 Windows • 🔧 Git &amp; GitHub
      </p>

      <!-- ⭐ Cloud Platforms / Services ⭐ -->
      <p class="cloud-services">
        <strong>Cloud Platforms:</strong> AWS<br>
        <strong>Cloud Services:</strong> EC2, EBS, EFS, S3, VPC, EKS, Route53, IAM, CloudWatch, Load Balancer, Auto Scaling
      </p>

    </div>

    <div class="hero-right">
      <div class="card-me">
        <img src="assets/images/avatar.png" alt="avatar" class="avatar-img"/>
        <div class="meta">
          <strong>Deepak Kumar D</strong>
          <div class="muted">DevOps • AWS Cloud • Automation</div>
        </div>
      </div>
    </div>
  </div>
</main>

<jsp:include page="footer.jsp"/>
</body>
</html>
