<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Courses</title>

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

.table-card {
	background: rgba(255, 255, 255, 0.15);
	backdrop-filter: blur(10px);
	border-radius: 20px;
	padding: 30px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, .2);
}

.table {
	margin-bottom: 0;
}

.table thead th {
	background: #0d6efd;
	color: white;
	text-align: center;
}

.table tbody td {
	background: rgba(255, 255, 255, 0.9);
	text-align: center;
	vertical-align: middle;
}

.btn-action {
	border-radius: 8px;
	padding: 5px 15px;
}
</style>

</head>
<body>

	<jsp:include page="adminDashBoard.jsp"></jsp:include>

	<section class="page-section">

		<div class="container">

			<h1 class="page-title">
				<i class="bi bi-book-half me-2"></i> View Courses
			</h1>

			<div class="table-card">

				<table class="table table-bordered table-hover">

					<thead>
						<tr>
							<th>SR. NO.</th>
							<th>COURSE NAME</th>
							<th>UPDATE</th>
							<th>DELETE</th>
						</tr>
					</thead>

					<tbody>

						<c:forEach var="tempcourse" items="${courses}" varStatus="loop">

							<tr>

								<td>${loop.count}</td>

								<td>${tempcourse.course}</td>

								<td><a href="${pageContext.request.contextPath}/course/update?id=${tempcourse.cid}&course=${tempcourse.course}">
										<i class="bi bi-pencil-square"></i>
									</a>
								</td>

								<td><a
									href="${pageContext.request.contextPath}/course/delete?id=${tempcourse.cid}">

										<i class="bi bi-trash"></i>
								</a></td>

							</tr>

						</c:forEach>

					</tbody>

				</table>

			</div>

		</div>

	</section>

</body>
</html>