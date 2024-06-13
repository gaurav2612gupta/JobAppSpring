<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.example.JobApp.model.JobPost" %>
<%@ page isELIgnored="false"%>

<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Jobs - Job Portal App</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            padding-top: 60px;
        }
        .card-container {
            margin-top: 20px;
        }
        .card {
            margin-bottom: 20px;
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

    <!-- Card Container -->
            <ab:set var="jobPosts" value="${jobPosts}" />

            <div class="container mt-5">
                <h2 class="mb-4 text-center font-weight-bold">Job Post List</h2>

                <div class="row row-cols-2">
                    <ab:forEach var="jobPost" items="${jobPosts}">
                        <div class="col mb-4">
                            <div class="card border-dark bg-dark text-white">
                                <div class="card-body">
                                    <h5 class="card-title">${jobPost.jobTitle}</h5>
                                     <p class="card-text">
                                        <strong>Job-Id: </strong>
                                        ${jobPost.jobId}
                                    </p>
                                    <p class="card-text">
                                        <strong>Description:</strong>
                                        ${jobPost.jobDescription}
                                    </p>
                                    <p class="card-text">
                                        <strong>Experience Required:</strong>
                                        ${jobPost.experienceRequired} years
                                    </p>
                                    <p class="card-text">
                                        <strong>Tech Stack Required:</strong>
                                        <ul>
                                            <ab:forEach var="tech" items="${jobPost.techStack}">
                                                <li>${tech}</li>
                                            </ab:forEach>
                                        </ul>
                                    </p>
                                </div>
                                <div class="card-footer">
                                    <!-- Optional footer content -->
                                </div>
                            </div>
                        </div>
                    </ab:forEach>
                </div>
            </div>


    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
