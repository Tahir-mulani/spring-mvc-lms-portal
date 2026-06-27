
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Learning Management System</title>

<!-- Bootstrap 5 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
body {
	background: linear-gradient(135deg, #0d6efd, #6f42c1);
	min-height: 100vh;
	color: white;
}

.navbar {
	box-shadow: 0 4px 15px rgba(0, 0, 0, .2);
}

.hero {
	padding: 120px 0;
	text-align: center;
}

.hero h1 {
	font-size: 3.5rem;
	font-weight: bold;
}

.hero p {
	font-size: 1.2rem;
	max-width: 700px;
	margin: auto;
}

.feature-card {
	border: none;
	border-radius: 20px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, .15);
	transition: .3s;
	height: 100%;
}

.feature-card:hover {
	transform: translateY(-8px);
}

.feature-icon {
	font-size: 60px;
	color: #0d6efd;
	margin-bottom: 15px;
}

.stats-section {
	padding: 50px 0;
}

.stat-card {
	background: rgba(255, 255, 255, .15);
	backdrop-filter: blur(10px);
	border-radius: 20px;
	padding: 25px;
	text-align: center;
}

.footer {
	background: rgba(0, 0, 0, .2);
	padding: 20px;
	margin-top: 50px;
	text-align: center;
}
</style>

</head>
<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">

			<a class="navbar-brand fw-bold" href="#">
				<i class="bi bi-mortarboard-fill me-2"></i>
				LMS Portal
			</a>

			

		</div>
	</nav>

	<!-- Hero Section -->
	<section class="hero">
		<div class="container">

			<h1>
				Learning Management System
			</h1>

			<p class="my-4">
				A smart platform for managing Courses, Students,
				Study Materials and Reports efficiently.
			</p>

			<a href="login"
				class="btn btn-warning btn-lg px-4 me-2">
				Get Started
			</a>

			<a href="#features"
				class="btn btn-outline-light btn-lg px-4">
				Learn More
			</a>

		</div>
	</section>

	<!-- Features -->
	<section id="features" class="container mb-5">

		<h2 class="text-center fw-bold mb-5">
			Our Features
		</h2>

		<div class="row g-4">

			<div class="col-md-4">
				<div class="card feature-card">
					<div class="card-body text-center">

						<div class="feature-icon">
							<i class="bi bi-person-workspace"></i>
						</div>

						<h4>Admin Management</h4>

						<p>
							Manage courses, students,
							materials and reports.
						</p>

					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card feature-card">
					<div class="card-body text-center">

						<div class="feature-icon">
							<i class="bi bi-mortarboard"></i>
						</div>

						<h4>Student Portal</h4>

						<p>
							View courses, study materials
							and personal profile.
						</p>

					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card feature-card">
					<div class="card-body text-center">

						<div class="feature-icon">
							<i class="bi bi-journal-richtext"></i>
						</div>

						<h4>Study Resources</h4>

						<p>
							Access notes, PDFs and
							learning materials anytime.
						</p>

					</div>
				</div>
			</div>

		</div>

	</section>

	<!-- Statistics -->
	<section class="stats-section">
		<div class="container">

			<div class="row g-4">

				<div class="col-md-3">
					<div class="stat-card">
						<h2>100+</h2>
						<p>Courses</p>
					</div>
				</div>

				<div class="col-md-3">
					<div class="stat-card">
						<h2>500+</h2>
						<p>Students</p>
					</div>
				</div>

				<div class="col-md-3">
					<div class="stat-card">
						<h2>1000+</h2>
						<p>Materials</p>
					</div>
				</div>

				<div class="col-md-3">
					<div class="stat-card">
						<h2>24/7</h2>
						<p>Availability</p>
					</div>
				</div>

			</div>

		</div>
	</section>

	<!-- About -->
	<section class="container text-center mt-5">
		<h2 class="fw-bold mb-3">
			Why Choose LMS?
		</h2>

		<p class="lead">
			Our Learning Management System provides a simple,
			secure and user-friendly environment for educational
			institutions to manage their academic activities.
		</p>
	</section>

	<!-- Footer -->
	<div class="footer">
		<p class="mb-0">
			© 2026 Learning Management System | All Rights Reserved
		</p>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
