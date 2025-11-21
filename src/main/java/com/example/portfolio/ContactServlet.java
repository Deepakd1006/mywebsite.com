package com.example.portfolio;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;

@WebServlet(name="ContactServlet", urlPatterns={"/contactSubmit"})
public class ContactServlet extends HttpServlet {
    private static final String MESSAGES_FILE = "/WEB-INF/messages.txt";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String message = req.getParameter("message");

        String line = String.format("[%s] %s <%s>: %s%n", LocalDateTime.now(), name, email, message);

        File file = new File(getServletContext().getRealPath(MESSAGES_FILE));
        File parent = file.getParentFile();
        if (!parent.exists()) parent.mkdirs();
        try (Writer w = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), StandardCharsets.UTF_8))) {
            w.write(line);
        } catch (IOException ex) {
            req.setAttribute("note", "Error saving message: " + ex.getMessage());
            req.getRequestDispatcher("/contact.jsp").forward(req, resp);
            return;
        }

        req.setAttribute("note", "Message received — thank you!");
        req.getRequestDispatcher("/contact.jsp").forward(req, resp);
    }
}
