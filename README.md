# mywebsite.com
Developed a Java-based portfolio web app using JSP, Servlets, Maven, and Tomcat. Built dynamic pages, project case studies, contact form, and resume download with a modern responsive UI. Packaged as a WAR, deployed on Linux, and integrated video/image backgrounds and secure servlet-driven data.


✅ Project Description: DevOps Portfolio Web Application

DevOps Portfolio Web Application is a fully functional, production-ready personal portfolio website built using Java, JSP, Servlets, Maven, and Apache Tomcat.
The application showcases my professional experience, DevOps skills, and projects in a clean, modern, and responsive UI with a fully custom frontend and backend.

The system includes dynamic pages powered by servlets, downloadable resume integration, project detail pages, contact submission features, and a polished UI optimized for readability and performance.

🏗 Technology Stack
Frontend

JSP (Java Server Pages)

HTML5, CSS3 (custom theme)

Responsive modern UI

Hero section with GIF/video background support

Dynamic project cards & detail pages

Backend

Java Servlets (Profile, Contact, Upload)

Maven (WAR packaging)

Apache Tomcat (deployment server)

Java I/O for storing contact form messages

Dynamic rendering (ProfileServlet → Experience Page)

Infrastructure / Build

Maven build system

Packaged as a .war file

Deployable on Apache Tomcat 9

Standard Java webapp folder structure (WEB-INF, servlets, JSPs)

🌟 Key Features
✔ Homepage with Dynamic Hero Section

Supports hero background: .webm, .mp4, .gif, .png

Profile card with avatar & role

CTA buttons: Download Resume, View Experience

✔ Projects Overview Page

Project cards with:

Thumbnail images

Summary

Tech stack

Highlights

"View Details" button

✔ Detailed Project Case Study Pages

Each project (Play-Store Deployment, FinanceMe Platform) includes:

Full breakdown of work performed

Architecture details

IaC, CI/CD automations

Tools and technologies

Problem → Solution explanation

Back button returning to Projects page

✔ Resume Integration

Resume PDF embedded in the webapp

Clean page layout + Download button

✔ Experience Page (Dynamic, Servlet Powered)

Loads experience items from Java backend

Rendered dynamically in JSP

✔ Contact Form

Built with JSP + servlet backend

Submissions stored securely in WEB-INF/messages.txt

✔ Image Asset Pipeline

Public images stored in assets/images/

GIF/video/background fallback logic

Project thumbnails optimized for UI cards


🚀 What This Project Demonstrates

This portfolio acts as a real-world Java web application showing skills in:

DevOps

WAR packaging & Tomcat deployment

Linux server setup

File management & permissions

Servlets and log handling

Backend Development

Request handling

Input processing

Java MVC pattern

Dynamic rendering

Frontend Development

Custom HTML/CSS styling

Responsive UI

Hero sections, project grids

Reusable JSP includes

Systems Architecture

Multi-page application

Resource optimization

Clear separation of concerns

Deployment-ready structure




pre-req

root@ip-172-31-40-186:/var/lib/jenkins/workspace/portfolio# mvn -version
Apache Maven 3.9.6 (bc0240f3c744dd6b6ec2920b3cd08dcc295161ae)
Maven home: /opt/maven
Java version: 17.0.16, vendor: Ubuntu, runtime: /usr/lib/jvm/java-17-openjdk-amd64
Default locale: en, platform encoding: UTF-8
OS name: "linux", version: "6.8.0-1040-aws", arch: "amd64", family: "unix"
root@ip-172-31-40-186:/var/lib/jenkins/workspace/portfolio# java -version
openjdk version "17.0.16" 2025-07-15
OpenJDK Runtime Environment (build 17.0.16+8-Ubuntu-0ubuntu122.04.1)
OpenJDK 64-Bit Server VM (build 17.0.16+8-Ubuntu-0ubuntu122.04.1, mixed mode, sharing)
