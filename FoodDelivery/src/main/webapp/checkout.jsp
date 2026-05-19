<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width,
initial-scale=1.0">

<title>Checkout</title>

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
	background: linear-gradient(135deg, #fff8f2, #f5f5f5);
	padding: 30px;
}

/* ===== CARD ===== */
.checkout-container {
	background: white;
	width: 470px;
	padding: 35px;
	border-radius: 25px;
	box-shadow: 0 15px 35px rgba(0, 0, 0, .08);
}

/* ===== TITLE ===== */
.title {
	text-align: center;
	font-size: 36px;
	font-weight: bold;
	margin-bottom: 12px;
	color: #222;
}

/* ===== SUBTITLE ===== */
.subtitle {
	text-align: center;
	font-size: 14px;
	color: #777;
	margin-bottom: 28px;
}

/* ===== LABEL ===== */
label {
	display: block;
	font-weight: 600;
	margin-bottom: 8px;
	color: #333;
}

/* ===== INPUT ===== */
input, select {
	width: 100%;
	padding: 15px;
	border: 1px solid #ddd;
	border-radius: 14px;
	outline: none;
	font-size: 15px;
	margin-bottom: 22px;
	transition: .3s;
}

input:focus, select:focus {
	border-color: #fc8019;
}

/* ===== PAYMENT OPTIONS ===== */
.payment-note {
	font-size: 13px;
	color: #777;
	margin-top: -10px;
	margin-bottom: 20px;
}

/* ===== BUTTON ===== */
button {
	width: 100%;
	padding: 15px;
	border: none;
	border-radius: 14px;
	background: #fc8019;
	color: white;
	font-size: 17px;
	font-weight: bold;
	cursor: pointer;
	transition: .3s;
}

button:hover {
	background: #e56f0e;
	transform: translateY(-2px);
}

/* ===== DELIVERY BOX ===== */
.delivery-info {
	background: #fff7ee;
	padding: 12px;
	border-radius: 12px;
	margin-bottom: 20px;
	font-size: 14px;
	color: #555;
}

/* ===== MOBILE ===== */
@media ( max-width :550px) {
	.checkout-container {
		width: 95%;
		padding: 25px;
	}
	.title {
		font-size: 30px;
	}
}
</style>

</head>



<body>



	<div class="checkout-container">


		<div class="title">🛍 Checkout</div>



		<div class="subtitle">Review your details before placing order</div>



		<div class="delivery-info">🚚 Estimated delivery: 25–35 mins</div>




		<form action="checkout" method="POST">


			<label> Delivery Address </label> <input type="text" name="address"
				value="<%=session.getAttribute("userAddress")%>"
				placeholder="Enter delivery address"> <label>

				Payment Method </label> <select name="payment">

				<option>Card</option>


				<option>Cash on Delivery</option>


				<option>GPay</option>


				<option>PhonePe</option>


				<option>UPI</option>

			</select>



			<p class="payment-note">🔒 Secure payment processing</p>



			<button type="submit">Confirm Order 🚚</button>



		</form>

	</div>



</body>

</html>