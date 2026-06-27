
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<!-- Bootstrap 5 CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
body {
	min-height: 100vh;
	background: linear-gradient(135deg, #0d6efd, #6f42c1);
}

.navbar {
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
}

.welcome-section {
	color: white;
	text-align: center;
	padding: 40px 0;
}

.dashboard-card {
	border: none;
	border-radius: 20px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
	transition: all 0.3s ease;
	height: 100%;
}

.dashboard-card:hover {
	transform: translateY(-8px);
	box-shadow: 0 15px 30px rgba(0, 0, 0, 0.25);
}

.card-icon {
	font-size: 55px;
	color: #0d6efd;
	margin-bottom: 15px;
}

.dropdown-menu {
	border-radius: 12px;
}

.card-title {
	font-weight: 600;
}
</style>

</head>
<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">

			<a class="navbar-brand fw-bold"
				href="${pageContext.request.contextPath}/admin"> <i
				class="bi bi-speedometer2 me-2"></i> Admin Dashboard
			</a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">

				<ul class="navbar-nav me-auto mb-2 mb-lg-0">

					<!-- Course -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown"> <i class="bi bi-book me-1"></i>
							Course
					</a>

						<ul class="dropdown-menu">
							<li><a class="dropdown-item"
								href="${pageContext.request.contextPath}/course/addNewCourse">
									<i class="bi bi-plus-circle me-2"></i> Add New Course
							</a></li>

							<li><a class="dropdown-item"
								href="${pageContext.request.contextPath}/course/viewCourse">
									<i class="bi bi-eye me-2"></i> View Course
							</a></li>
						</ul></li>

					<!-- Study Material -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown"> <i
							class="bi bi-journal-richtext me-1"></i> Study Material
					</a>

						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#"> <i
									class="bi bi-cloud-upload me-2"></i> Upload Material
							</a></li>

							<li><a class="dropdown-item" href="#"> <i
									class="bi bi-eye me-2"></i> View Material
							</a></li>
						</ul></li>

					<!-- Student Master -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown"> <i class="bi bi-mortarboard me-1"></i>
							Student Master
					</a>

						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#"> <i
									class="bi bi-person-plus me-2"></i> Add Student
							</a></li>

							<li><a class="dropdown-item" href="#"> <i
									class="bi bi-people me-2"></i> View Student
							</a></li>
						</ul></li>

					<!-- Reports -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown"> <i
							class="bi bi-bar-chart-fill me-1"></i> Reports
					</a>

						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#"> <i
									class="bi bi-graph-up me-2"></i> View Course Wise Student
							</a></li>

							<li><a class="dropdown-item" href="#"> <i
									class="bi bi-file-earmark-bar-graph me-2"></i> View Course Wise
									Material
							</a></li>
						</ul></li>

				</ul>

				<form class="d-flex">
					<a href="${pageContext.request.contextPath}/logout"
						class="btn btn-danger"> <i class="bi bi-box-arrow-right me-1"></i>
						Logout
					</a>
				</form>

			</div>
		</div>
	</nav>
	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
