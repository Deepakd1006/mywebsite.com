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

        HashMap<String,String> e1 = new HashMap<>();
        e1.put("role","DevOps Engineer");
        e1.put("company","Concentrix Daksh Pvt");
        e1.put("period","Sep 2020 - Jan 2024");
        e1.put("desc","Managed Docker containers and Kubernetes orchestration; set up Jenkins CI/CD pipelines; automated AWS provisioning with Terraform; configured Ansible for server management; implemented Prometheus + Grafana for monitoring. Contributed to Play-Store and FinanceMe projects.");
        experiences.add(e1);

        HashMap<String,String> e2 = new HashMap<>();
        e2.put("role","Student Developer / Projects");
        e2.put("company","Academic Projects");
        e2.put("period","2019 - 2020");
        e2.put("desc","Built Java web apps, REST endpoints and integrated with basic DB and CI flows.");
        experiences.add(e2);

        req.setAttribute("experiences", experiences);
        req.getRequestDispatcher("/experience.jsp").forward(req, resp);
    }
}
