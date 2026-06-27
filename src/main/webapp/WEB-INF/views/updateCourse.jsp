<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Course</title>

<style>
body {
	min-height: 100vh;
	background: linear-gradient(135deg, #0d6efd, #6f42c1);
}

.page-section {
	padding: 60px 0;
}

.page-title {
	color: white;
	font-weight: bold;
	text-align: center;
	margin-bottom: 30px;
}

.form-card {
	max-width: 600px;
	margin: auto;
	background: rgba(255, 255, 255, 0.15);
	backdrop-filter: blur(10px);
	border-radius: 20px;
	padding: 35px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, .2);
}

.form-label {
	color: white;
	font-weight: 600;
	margin-bottom: 8px;
}

.form-control {
	border-radius: 10px;
	padding: 10px;
}

.form-control[readonly] {
	background: #e9ecef;
	font-weight: bold;
}

.btn-save {
	border-radius: 8px;
	padding: 10px 25px;
	font-weight: bold;
}
</style>

</head>

<body>

	<jsp:include page="adminDashBoard.jsp"></jsp:include>

	<section class="page-section">

		<div class="container">

			<h1 class="page-title">
				<i class="bi bi-pencil-square me-2"></i> Update Course
			</h1>

			<div class="form-card">

				<form action="${pageContext.request.contextPath}/course/edit"
					method="post">

					<div class="mb-3">
						<label class="form-label">Course ID</label>
						<input type="text" name="cid"
							value="${courseObj.cid}"
							class="form-control"
							readonly="readonly">
					</div>

					<div class="mb-3">
						<label class="form-label">Course Name</label>
						<input type="text"
							id="course"
							name="course"
							value="${courseObj.course}"
							class="form-control"
							required>
					</div>

					<div class="text-center mt-4">
						<button type="submit" class="btn btn-warning btn-save">
							<i class="bi bi-check-circle me-2"></i>
							Save Changes
						</button>
					</div>

				</form>

			</div>

		</div>

	</section>

</body>
</html>