<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="
com.tap.model.Cart,
com.tap.model.CartItem"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Cart</title>

<link rel="icon" href="images/food app header logo.png">


<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', sans-serif;
}

/* ===== BODY ===== */
body {
	background: linear-gradient(135deg, #fff8f2, #f5f5f5);
	min-height: 100vh;
	padding: 40px 20px;
}

/* ===== TITLE ===== */
h1 {
	text-align: center;
	font-size: 42px;
	margin-bottom: 30px;
	color: #222;
}

/* ===== CART BOX ===== */
.cart-container {
	max-width: 750px;
	margin: auto;
	background: white;
	padding: 30px;
	border-radius: 25px;
	box-shadow: 0 12px 35px rgba(0, 0, 0, .08);
}

/* ===== ITEM ===== */
.cart-row {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px 0;
	border-bottom: 1px solid #eee;
}

.item-name {
	font-size: 22px;
	font-weight: bold;
	margin-bottom: 8px;
}

.item-price, .item-total {
	font-size: 15px;
	color: #666;
	margin-top: 5px;
}

/* ===== RIGHT ===== */
.cart-right {
	display: flex;
	flex-direction: column;
	align-items: center;
	gap: 12px;
}

/* ===== QTY ===== */
.qty-box {
	display: flex;
	gap: 12px;
	align-items: center;
}

.qty-btn {
	width: 36px;
	height: 36px;
	border: none;
	border-radius: 50%;
	background: #fc8019;
	color: white;
	font-size: 18px;
	cursor: pointer;
}

.qty-btn:hover {
	background: #e56f0e;
}

.qty-display {
	font-weight: bold;
	font-size: 17px;
}

/* ===== REMOVE ===== */
.remove-btn {
	background: none;
	border: none;
	color: red;
	cursor: pointer;
}

.remove-btn:hover {
	text-decoration: underline;
}

/* ===== TOTAL ===== */
.grand-total {
	display: flex;
	justify-content: space-between;
	padding-top: 25px;
	margin-top: 20px;
	border-top: 1px solid #eee;
	font-size: 28px;
	font-weight: bold;
}

/* ===== BUTTONS ===== */
.cart-actions {
	display: flex;
	flex-direction: column;
	gap: 15px;
	margin-top: 25px;
}

.action-btn {
	width: 100%;
	padding: 15px;
	border: none;
	border-radius: 14px;
	background: #fc8019;
	text-decoration: none;
	text-align: center;
	font-size: 16px;
	font-weight: bold;
	color: white;
	cursor: pointer;
	transition: .3s;
}

.action-btn:hover {
	background: #e56f0e;
}

.proceed {
	background: #1ba672;
}

.proceed:hover {
	background: #148759;
}

/* ===== EMPTY ===== */
.empty {
	text-align: center;
	padding: 30px;
	font-size: 18px;
	color: #666;
}

/* ===== MOBILE ===== */
@media ( max-width :650px) {
	.cart-row {
		flex-direction: column;
		align-items: flex-start;
		gap: 20px;
	}
	.cart-right {
		align-items: flex-start;
	}
	.grand-total {
		font-size: 22px;
	}
}
</style>

</head>


<body>


	<h1>🛒 Your Cart</h1>



	<div class="cart-container">


		<%
		Cart cart = (Cart) session.getAttribute("cart");

		Integer restaurantId = (Integer) session.getAttribute("restaurantId");

		if (cart != null && !cart.getItems().isEmpty()) {

			for (CartItem item : cart.getItems().values()) {
		%>



		<div class="cart-row">

			<div class="cart-left">

				<p class="item-name">

					<%=item.getName()%>

				</p>


				<p class="item-price">

					Price: ₹
					<%=item.getPrice()%>

				</p>


				<p class="item-total">

					Total: ₹
					<%=item.getTotalprice()%>

				</p>

			</div>



			<div class="cart-right">

				<div class="qty-box">


					<form action="cart" method="post">

						<input type="hidden" name="itemId" value="<%=item.getItemId()%>">


						<input type="hidden" name="restaurantId" value="<%=restaurantId%>">
						<input type="hidden" name="action" value="update"> <input
							type="hidden" name="quantity" value="<%=item.getQuantity() - 1%>">


						<button class="qty-btn" <%if (item.getQuantity() == 1) {%>
							disabled <%}%>>−</button>

					</form>



					<span class="qty-display"> <%=item.getQuantity()%>

					</span>



					<form action="cart" method="post">

						<input type="hidden" name="itemId" value="<%=item.getItemId()%>">

						<input type="hidden" name="restaurantId" value="<%=restaurantId%>">
						<input type="hidden" name="action" value="update"> <input
							type="hidden" name="quantity" value="<%=item.getQuantity() + 1%>">

						<button class="qty-btn">+</button>

					</form>

				</div>



				<form action="cart" method="post">

					<input type="hidden" name="itemId" value="<%=item.getItemId()%>">


					<input type="hidden" name="restaurantId" value="<%=restaurantId%>">
					<input type="hidden" name="action" value="remove">


					<button class="remove-btn">Remove</button>

				</form>

			</div>

		</div>


		<%
		}

		} else {
		%>


		<p class="empty">

			Your cart is empty 😔 <br> <br> Add delicious food to
			continue

		</p>


		<div class="cart-actions">

			<a href="menu?restaurantId=<%=session.getAttribute("restaurantId")%>"
				class="action-btn"> Add More Food 🍔 </a>

		</div>

		<%
		}
		%>



		<%
		if (cart != null && !cart.getItems().isEmpty()) {
		%>


		<div class="grand-total">

			<span> Grand Total </span> <span> ₹ <%=cart.getGrandTotal()%>

			</span>

		</div>



		<div class="cart-actions">


			<a href="home" class="action-btn"> Add More Food 🍔 </a>



			<form action="checkout.jsp" method="post">

				<input type="submit" value="Proceed to Checkout 🚚"
					class="action-btn proceed">

			</form>

		</div>


		<%
		}
		%>


	</div>

</body>
</html>