package com.example.portfolio;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@WebServlet(name = "ProfileServlet", urlPatterns = {"/profile"})
public class ProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<HashMap<String, String>> experiences = new ArrayList<>();

        // Professional Summary as the first "experience" block
        HashMap<String, String> e1 = new HashMap<>();
        e1.put("role", "PROFESSIONAL SUMMARY");
        e1.put("company", "");
        e1.put("period", "");
        e1.put("desc",
                    "DevOps Engineer with 3.5 years of experience in building CI/CD pipelines, resolving Java/Maven build issues, and managing deployments across Dev, Test, Staging, and Production environments. " +
                    "Skilled in fixing Java version mismatches, updating environment variables like JAVA_HOME, and optimizing pom.xml for reliable builds in Jenkins and Tomcat. " +
                    "Experienced in packaging validated applications into Docker images and deploying them to Kubernetes (EKS) using automated pipelines. " +
                    "Strong background in AWS, Terraform, Ansible, Docker, and Kubernetes, with hands-on experience setting up cloud infrastructure, automating deployments, and implementing monitoring with Prometheus and Grafana. " +
                    "A detail-oriented team player with solid troubleshooting skills and a focus on automation, consistency, and smooth release workflows."
                    );
        experiences.add(e1);

        // Work experience
        HashMap<String, String> e2 = new HashMap<>();
        e2.put("role", "DevOps Engineer");
        e2.put("company", "Concentrix Daksh Pvt");
        e2.put("period", "Sep 2020 - Jan 2024");
        e2.put("desc",
                "Worked as a DevOps Engineer handling CI/CD pipelines, build failures, Java version issues, updating JAVA_HOME, and fixing Maven/pom.xml compatibility for smooth deployments in Dev/Test. " +
                "Later packaged validated builds into Docker images and deployed them to Kubernetes for staging and production."
        );
        experiences.add(e2);

        req.setAttribute("experiences", experiences);
        req.getRequestDispatcher("/experience.jsp").forward(req, resp);
    }
}
