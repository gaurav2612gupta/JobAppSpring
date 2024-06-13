<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="com.example.JobApp.model.JobPost" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Added Successfully - Job Portal App</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            padding-top: 60px;
            text-align: center;
        }
        .container {
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">Job Portal App</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="alljobs">All Jobs</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <%
        JobPost myJobPost = (JobPost) request.getAttribute("jobPost");
     %>

    <!-- Success Message Container -->
    <div class="container">
        <div class="alert alert-success" role="alert">
            <h4 class="alert-heading">Job Added Successfully!</h4>
            <p>Your job listing has been added to the Job Portal.</p>
            <hr>
            <h5>Job Details:</h5>
            <p><strong>Job Title:</strong> <%= URLDecoder.decode(request.getParameter("jobTitle"), "UTF-8") %></p>
            <p><strong>Job Description:</strong> <%= URLDecoder.decode(request.getParameter("jobDescription"), "UTF-8") %></p>
            <p><strong>Experience Required:</strong> <%= request.getParameter("experienceRequired") %> years</p>
            <p><strong>Tech Stack:</strong> <%= URLDecoder.decode(request.getParameter("techStack"), "UTF-8") %></p>
        </div>
        <div>
            <a href="alljobs" class="btn btn-primary">View All Jobs</a>
            <a href="addjob" class="btn btn-secondary">Add Another Job</a>
        </div>
    </div>

    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
