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
    <!-- Video background (preferred). Name: assets/images/hero-bg.mp4 -->
    <video id="heroVideo" autoplay muted loop playsinline preload="auto">
      <source src="assets/images/hero-bg.webm" type="video/webm">
      <source src="assets/images/hero-bg.mp4" type="video/mp4">
      <!-- if video sources not available, nothing happens and the <img> below is shown -->
    </video>

    <!-- GIF or PNG fallback. Name: assets/images/hero-bg.gif OR assets/images/hero-bg.png -->
    <img src="assets/images/hero-bg.gif" alt="" class="hero-fallback" onerror="this.style.display='none'">
    <img src="assets/images/hero-bg.png" alt="" class="hero-fallback" onerror="this.style.display='none'">
    
    <!-- dark overlay to keep text readable -->
    <div class="hero-overlay" aria-hidden="true"></div>
  </div>

  <div class="hero container">
    <div class="hero-left">
      <h1>DEEPAK KUMAR D</h1>
      <p class="tag">DevOps Engineer . AWS </p>
      <p class="lead">DevOps Engineer with 3.5 Years’ Experience | Passionate About Automation & Cloud Innovation</p>
      <p class="cta">
        <a class="btn" href="resume.jsp">Download Resume</a>

        <!-- ⭐ FIXED: View Experience goes to servlet, not raw JSP ⭐ -->
        <a class="btn ghost" href="<%= request.getContextPath() %>/profile">View Experience</a>
      </p>

      <!-- Updated quick skills with emojis + extra tools -->
      <ul class="quick-skills">
        <li>☁️ AWS</li>
        <li>🐳 Docker</li>
        <li>☸️ Kubernetes (EKS)</li>
        <li>🛠 Terraform</li>
        <li>🔁 Jenkins</li>
        <li>📦 Ansible</li>
        <li>🔍 Prometheus &amp; Grafana</li>
        <li>🔐 Trivy</li>
        <li>🧪 SonarQube</li>
        <li>🐧 Linux (Ubuntu)</li>
        <li>🪟 Windows</li>
        <li>🔧 Git &amp; GitHub</li>
      </ul>

      <!-- Cloud platforms / services line under AWS -->
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
