<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width,
initial-scale=1.0">

<title>Register | FoodZone</title>

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
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 30px;
	background: linear-gradient(rgba(0, 0, 0, .45), rgba(0, 0, 0, .45)),
		url("images/user-register-bg.jpg");
	background-size: cover;
	background-position: center;
}

/* ===== CARD ===== */
.container {
	width: 470px;
	padding: 35px;
	background: rgba(255, 255, 255, .12);
	backdrop-filter: blur(18px);
	border-radius: 25px;
	border: 1px solid rgba(255, 255, 255, .2);
	box-shadow: 0 10px 40px rgba(0, 0, 0, .25);
}

/* ===== TITLE ===== */
.container h2 {
	text-align: center;
	font-size: 34px;
	color: white;
	margin-bottom: 10px;
}

.subtitle {
	text-align: center;
	font-size: 14px;
	color: #eee;
	margin-bottom: 28px;
}

/* ===== INPUT ===== */
.input-group {
	margin-bottom: 18px;
}

label {
	display: block;
	margin-bottom: 8px;
	font-weight: 600;
	color: white;
}

input, textarea, select {
	width: 100%;
	padding: 14px;
	border: none;
	outline: none;
	border-radius: 12px;
	font-size: 15px;
	background: rgba(255, 255, 255, .9);
}

textarea {
	resize: none;
	height: 80px;
}

input:focus, textarea:focus, select:focus {
	border: 2px solid #fc8019;
}

/* ===== BUTTON ===== */
button {
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
	margin-top: 10px;
}

button:hover {
	background: #e56f0e;
	transform: translateY(-2px);
}

/* ===== LOGIN LINK ===== */
.login-link {
	text-align: center;
	margin-top: 20px;
	color: white;
}

.login-link a {
	color: #ffd0a4;
	font-weight: bold;
	text-decoration: none;
}

.login-link a:hover {
	text-decoration: underline;
}

/* ===== MOBILE ===== */
@media ( max-width :550px) {
	.container {
		width: 95%;
		padding: 25px;
	}
	.container h2 {
		font-size: 28px;
	}
}
</style>

</head>



<body>



	<div class="container">


		<h2>🍔 Create Account</h2>


		<p class="subtitle">Join FoodZone and start ordering</p>




		<form action="UserRegisteration">


			<div class="input-group">

				<label> Full Name </label> <input type="text" name="name" required>

			</div>




			<div class="input-group">

				<label> Username </label> <input type="text" name="username"
					required>

			</div>




			<div class="input-group">

				<label> Password </label> <input type="password" name="password"
					required>

			</div>




			<div class="input-group">

				<label> Email </label> <input type="email" name="email" required>

			</div>




			<div class="input-group">

				<label> Phone Number </label> <input type="tel" name="phonenumber"
					required>

			</div>




			<div class="input-group">

				<label> Address </label>

				<textarea name="address">

</textarea>

			</div>




			<div class="input-group">

				<label> Role </label> <select name="role">

					<option>Select Role</option>

					<option>Customer</option>

					<option>Restaurant Admin</option>

					<option>Delivery Agent</option>

					<option>Super Admin</option>

				</select>

			</div>



			<button type="submit">Create Account</button>



			<div class="login-link">

				Already have account? <a href="login.jsp"> Login </a>

			</div>



		</form>

	</div>

</body>

</html>