<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Play-Store Application Deployment</title>
  <meta name="viewport" content="width=device-width,initial-scale=1"/>
  <link rel="stylesheet" href="../assets/css/devops-style.css"/>
</head>
<body>
<jsp:include page="../header.jsp"/>
<main class="container">
  <h2>Play-Store Application Deployment | Concentrix</h2>
  <p><strong>Short summary:</strong> Managed containerized deployments of Play-Store web applications, performed rolling Kubernetes updates for zero-downtime, and monitored using Prometheus & Grafana.</p>

  <h3>Responsibilities / Work performed</h3>
  <ul>
    <li>Managed containerized deployments of Play-Store web applications by updating Dockerfiles and rebuilding Docker images.</li>
    <li>Performed rolling updates in Kubernetes clusters to ensure zero-downtime deployments and smooth version rollouts.</li>
    <li>Monitored application performance and deployment stability using Prometheus and Grafana dashboards.</li>
  </ul>

  <h3>Solution / How it was implemented</h3>
  <p>We used Docker for containerization, configured Helm charts to manage releases, and used Jenkins to drive CI/CD pipelines that build, test, and push images to ECR. Deployments used Helm + Kubernetes manifest templating with readiness/liveness probes to automate safe rollouts and handle automated rollbacks on failures.</p>

  <h3>Architecture notes</h3>
  <ul>
    <li>Container registry: Amazon ECR</li>
    <li>Orchestration: Amazon EKS (multiple node groups with autoscaling)</li>
    <li>Release strategy: Rolling updates with readiness/liveness probes and automated rollback triggers</li>
    <li>Monitoring: Prometheus exporters + Grafana dashboards for key metrics</li>
  </ul>

  <h3>Technologies</h3>
  <p>AWS, EKS, Docker, Helm, Terraform (infra-as-code), Jenkins, Prometheus, Grafana</p>

  <p><a class="btn" href="../projects.jsp">← Back to Projects</a></p>
</main>
<jsp:include page="../footer.jsp"/>
</body>
</html>
