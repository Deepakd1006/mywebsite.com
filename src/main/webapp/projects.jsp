<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Projects</title>
  <meta name="viewport" content="width=device-width,initial-scale=1"/>
  <link rel="stylesheet" href="assets/css/devops-style.css"/>
</head>
<body>
<jsp:include page="header.jsp"/>
<main class="container">
  <h2>Projects & Case Studies</h2>

  <div class="projects-grid">
    <article class="project-card">
      <img src="assets/images/project-playstore.png" alt="PlayStore Project" class="project-thumb"/>
      <div class="project-body">
        <h3>Play-Store Application Deployment</h3>
        <p class="muted">Concentrix — EKS, Docker, CI/CD</p>
        <p>Managed containerized deployments, performed Kubernetes rolling updates to ensure zero-downtime, and monitored performance with Prometheus & Grafana.</p>
        <p><strong>Highlights:</strong> container image lifecycle, rolling updates, monitoring & health checks.</p>
        <p><a class="btn" href="projects/playstore-deployment.jsp">View Details</a></p>
      </div>
    </article>

    <article class="project-card">
      <img src="assets/images/project-financeme.png" alt="FinanceMe Project" class="project-thumb"/>
      <div class="project-body">
        <h3>Finance Microservices Platform</h3>
        <p class="muted">Concentrix — Microservices, Terraform</p>
        <p>Built and maintained AWS infrastructure for FinanceMe using Docker + EKS; automated provisioning with Terraform and CI/CD with Jenkins for reliable deployments.</p>
        <p><strong>Highlights:</strong> IaC (Terraform), Jenkins pipelines, monitoring, automated rollback/versioning.</p>
        <p><a class="btn" href="projects/financeme-platform.jsp">View Details</a></p>
      </div>
    </article>
  </div>

</main>
<jsp:include page="footer.jsp"/>
</body>
</html>
