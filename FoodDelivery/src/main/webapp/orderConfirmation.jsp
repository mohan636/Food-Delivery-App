<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width,
initial-scale=1.0">

<title>Order Confirmed</title>

<link rel="icon" href="images/food app header logo.png">


<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', sans-serif;
}

/* BODY */
body {
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background: linear-gradient(135deg, #fff8f2, #f8f8f8);
	padding: 20px;
}

/* CARD */
.confirmation-container {
	background: white;
	padding: 50px;
	border-radius: 28px;
	text-align: center;
	width: 550px;
	box-shadow: 0 15px 35px rgba(0, 0, 0, .08);
}

/* SUCCESS */
.success {
	font-size: 80px;
	margin-bottom: 20px;
}

/* TITLE */
h1 {
	font-size: 38px;
	color: #1ba672;
	margin-bottom: 15px;
}

/* TEXT */
p {
	font-size: 18px;
	color: #666;
	line-height: 1.8;
}

/* DELIVERY BOX */
.delivery-box {
	margin-top: 25px;
	padding: 15px;
	background: #fff5eb;
	border-radius: 14px;
	font-size: 16px;
	font-weight: 600;
	color: #444;
}

/* BUTTON */
.track-btn {
	display: inline-block;
	margin-top: 30px;
	padding: 15px 28px;
	background: #fc8019;
	color: white;
	text-decoration: none;
	border-radius: 14px;
	font-weight: bold;
	transition: .3s;
}

.track-btn:hover {
	background: #e56f0e;
	transform: translateY(-2px);
}

/* MOBILE */
@media ( max-width :600px) {
	.confirmation-container {
		width: 95%;
		padding: 35px;
	}
	h1 {
		font-size: 30px;
	}
	.success {
		font-size: 65px;
	}
}
</style>

</head>



<body>



	<div class="confirmation-container">


		<div class="success">🎉</div>



		<h1>Order Confirmed</h1>



		<p>

			Your order has been placed successfully using <strong>

				FoodZone </strong>

		</p>



		<p>Thanks for ordering with us 🍔</p>




		<div class="delivery-box">🚚 Estimated delivery: 25–35 mins</div>




		<a href="home" class="track-btn"> Continue Ordering </a>



	</div>



</body>

</html>