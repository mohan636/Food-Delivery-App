<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width,
initial-scale=1.0">

<title>Login | FoodZone</title>

<link rel="icon" href="images/food app header logo.png">


<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', sans-serif;
}

/* ===== BODY ===== */
body {
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background: linear-gradient(rgba(0, 0, 0, .45), rgba(0, 0, 0, .45)),
		url("images/login-bg.jpg");
	background-size: cover;
	background-position: center;
}

/* ===== CARD ===== */
.login-container {
	width: 400px;
	padding: 40px;
	background: rgba(255, 255, 255, .12);
	backdrop-filter: blur(18px);
	border-radius: 25px;
	box-shadow: 0 10px 35px rgba(0, 0, 0, .25);
	border: 1px solid rgba(255, 255, 255, .2);
}

/* ===== TITLE ===== */
h2 {
	text-align: center;
	font-size: 34px;
	margin-bottom: 10px;
	color: white;
}

.subtitle {
	text-align: center;
	font-size: 14px;
	color: #eee;
	margin-bottom: 30px;
}

/* ===== INPUT ===== */
.input-group {
	margin-bottom: 18px;
}

label {
	display: block;
	margin-bottom: 8px;
	color: white;
	font-weight: 600;
}

input {
	width: 100%;
	padding: 15px;
	border: none;
	outline: none;
	border-radius: 12px;
	font-size: 15px;
	background: rgba(255, 255, 255, .9);
}

input:focus {
	border: 2px solid #fc8019;
}

/* ===== ERROR ===== */
.error {
	text-align: center;
	color: #ffb3b3;
	margin-bottom: 15px;
}

/* ===== BUTTON ===== */
.login-btn {
	width: 100%;
	padding: 15px;
	border: none;
	border-radius: 12px;
	background: #fc8019;
	color: white;
	font-size: 16px;
	font-weight: bold;
	cursor: pointer;
	transition: .3s;
}

.login-btn:hover {
	background: #e56f0e;
	transform: translateY(-2px);
}

/* ===== REGISTER ===== */
.register {
	text-align: center;
	margin-top: 22px;
	color: white;
}

.register a {
	color: #ffd0a4;
	text-decoration: none;
	font-weight: bold;
}

.register a:hover {
	text-decoration: underline;
}

/* ===== MOBILE ===== */
@media ( max-width :480px) {
	.login-container {
		width: 90%;
		padding: 30px;
	}
	h2 {
		font-size: 28px;
	}
}
</style>

</head>



<body>



	<div class="login-container">


		<h2>🍔 Welcome Back</h2>


		<p class="subtitle">Login to order your favourite food</p>




		<form action="login">


			<div class="input-group">

				<label> Email </label> <input type="email" name="email"
					placeholder="Enter email" required>

			</div>




			<div class="input-group">

				<label> Password </label> <input type="password" name="password"
					placeholder="Enter password" required>

			</div>




			<%
			String error = (String) request.getAttribute("error");

			if (error != null) {
			%>


			<p class="error">

				<%=error%>

			</p>


			<%
			}
			%>



			<button type="submit" class="login-btn">Login</button>


		</form>




		<p class="register">

			Don't have an account? <a href="userRegistration.jsp"> Register </a>

		</p>



	</div>

</body>

</html>