<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Course</title> 
<style>
body {
	min-height: 100vh;
	background: linear-gradient(135deg, #0d6efd, #6f42c1);
}

.page-section {
	padding: 60px 0;
}

.form-card {
	max-width: 650px;
	margin: auto;
	background: rgba(255, 255, 255, 0.15);
	backdrop-filter: blur(10px);
	border-radius: 20px;
	padding: 40px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, .2);
}

.page-title {
	color: white;
	font-weight: bold;
	margin-bottom: 30px;
	text-align: center;
}

.form-control {
	height: 50px;
	border-radius: 10px;
}

.btnAddCourse {
	margin-top: 20px;
}
</style>

</head>
<body>

	<jsp:include page="adminDashBoard.jsp"></jsp:include>

	<section class="page-section">
		<div class="container">

			<h1 class="page-title">
				<i class="bi bi-book-fill me-2"></i>
				Add New Course
			</h1>

			<div class="form-card">

				<form name="frm" action="${pageContext.request.contextPath}/course/save" method="post">

					<div class="mb-3">
						<label class="form-label text-white fw-bold">
							Course Name
						</label>

						<input type="text"
							class="form-control"
							placeholder="Enter Course Name Here" name="course" value="">
					</div>

					<div class="text-center btnAddCourse">
						<button class="btn btn-warning btn-lg px-4"
							type="submit" name="s">
							<i class="bi bi-plus-circle me-2"></i>
							Add Course
						</button>
					</div>
					<div class="text-danger">
					${msg}
					</div>

				</form>

			</div>

		</div>
	</section>
</body>
</html>