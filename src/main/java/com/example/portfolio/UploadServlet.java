package com.example.portfolio;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;

@WebServlet(name="UploadServlet", urlPatterns={"/uploadResume"})
@MultipartConfig(fileSizeThreshold = 1024 * 100, // 100KB
               maxFileSize = 1024 * 1024 * 10,    // 10MB
               maxRequestSize = 1024 * 1024 * 11) // 11MB
public class UploadServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Part filePart = req.getPart("resume");
        if (filePart == null || filePart.getSize() == 0) {
            req.setAttribute("message", "No file selected.");
            req.getRequestDispatcher("/resume.jsp").forward(req, resp);
            return;
        }

        String uploadsPath = getServletContext().getRealPath("/assets/uploads");
        if (uploadsPath == null) {
            uploadsPath = System.getProperty("java.io.tmpdir") + File.separator + "portfolio-uploads";
        }
        File uploadsDir = new File(uploadsPath);
        if (!uploadsDir.exists()) uploadsDir.mkdirs();

        File file = new File(uploadsDir, "resume.pdf");
        try (InputStream in = filePart.getInputStream()) {
            Files.copy(in, file.toPath(), java.nio.file.StandardCopyOption.REPLACE_EXISTING);
        }

        req.setAttribute("message", "Resume uploaded successfully.");
        req.getRequestDispatcher("/resume.jsp").forward(req, resp);
    }
}
