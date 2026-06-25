<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<!-- Bootstrap 5 CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	min-height: 100vh;
	background: linear-gradient(135deg, #0d6efd, #6f42c1);
	display: flex;
	align-items: center;
	justify-content: center;
}

.login-card {
	width: 100%;
	max-width: 420px;
	border-radius: 15px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
}
</style>
</head>
<body>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-sm-10 col-md-8 col-lg-5">

				<div class="card login-card">
					<div class="card-body p-4">

						<h2 class="text-center mb-4">Login</h2>

						<form name="frm" action="${pageContext.request.contextPath}/validate"
							method="post">

							<div class="mb-3">
								<input type="text" name="userName" value="" class="form-control"
									placeholder="Enter Username">
							</div>

							<div class="mb-3">
								<input type="password" name="pass" value="" class="form-control"
									placeholder="Enter Password">
							</div>

							<div class="mb-3 text-center">
								<span class="text-danger fw-bold"> ${msg} </span>
							</div>

							<div class="d-grid">
								<input type="submit" value="Login"
									class="btn btn-primary btn-lg">
							</div>

						</form>

					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>