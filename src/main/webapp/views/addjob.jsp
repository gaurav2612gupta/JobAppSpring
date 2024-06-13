<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Job - Job Portal App</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            padding-top: 60px;
        }
        .form-container {
            max-width: 600px;
            margin: auto;
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

    <!-- Form Container -->
    <div class="container form-container">
        <h2 class="text-center">Add Job</h2>
        <form action="handleForm" method="post">
            <div class="form-group">
                <label for="jobId">Job Id</label>
                <input type="text" class="form-control" id="jobId" name="jobId" required>
            </div>
            <div class="form-group">
                <label for="jobTitle">Job Title</label>
                <input type="text" class="form-control" id="jobTitle" name="jobTitle" required>
            </div>
            <div class="form-group">
                <label for="jobDescription">Job Description</label>
                <textarea class="form-control" id="jobDescription" name="jobDescription" rows="5" required></textarea>
            </div>
            <div class="form-group">
                <label for="experienceRequired">Experience Required (years)</label>
                <input type="number" class="form-control" id="experienceRequired" name="experienceRequired" required>
            </div>
            <div class="form-group">
                <label for="techStack">Tech Stack</label>
                <select class="form-control" id="techStack" name="techStack" multiple required>
                    <option value="Java">Java</option>
                    <option value="Python">Python</option>
                    <option value="JavaScript">JavaScript</option>
                    <option value="HTML/CSS">HTML/CSS</option>
                    <option value="React">React</option>
                    <option value="Angular">Angular</option>
                    <option value="Vue.js">Vue.js</option>
                    <option value="Node.js">Node.js</option>
                    <option value="Spring Boot">Spring Boot</option>
                    <option value="Django">Django</option>
                    <option value="Flask">Flask</option>
                    <option value="Ruby on Rails">Ruby on Rails</option>
                    <option value="PHP">PHP</option>
                    <option value="MySQL">MySQL</option>
                    <option value="PostgreSQL">PostgreSQL</option>
                    <option value="MongoDB">MongoDB</option>
                    <option value="AWS">AWS</option>
                    <option value="Azure">Azure</option>
                    <option value="Google Cloud">Google Cloud</option>
                    <option value="Kubernetes">Kubernetes</option>
                    <option value="Docker">Docker</option>
                    <option value="TensorFlow">TensorFlow</option>
                    <option value="PyTorch">PyTorch</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Submit</button>
        </form>
    </div>

    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
