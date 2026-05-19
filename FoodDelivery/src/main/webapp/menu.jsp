<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="
com.tap.model.Menu,
java.util.List"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width,
initial-scale=1.0">

<title>Menu</title>

<link rel="icon" href="images/food app header logo.png">


<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', sans-serif;
}

body {
	background: linear-gradient(135deg, #fff8f2, #f8f8f8);
	color: #222;
}

/* ===== NAVBAR ===== */
.navbar {
	background: white;
	height: 75px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 0 40px;
	position: sticky;
	top: 0;
	z-index: 100;
	box-shadow: 0 2px 15px rgba(0, 0, 0, .06);
}

.logo {
	font-size: 32px;
	font-weight: bold;
	color: #fc8019;
}

.nav-buttons {
	display: flex;
	gap: 15px;
}

.nav-btn {
	padding: 10px 18px;
	border: 1px solid #ddd;
	background: white;
	border-radius: 12px;
	cursor: pointer;
	transition: .3s;
}

.nav-btn:hover {
	background: #fc8019;
	color: white;
}

/* ===== TITLE ===== */
.heading {
	width: 92%;
	margin: 30px auto 10px;
	font-size: 34px;
	font-weight: bold;
}

.subtitle {
	width: 92%;
	margin: auto;
	color: #666;
	margin-bottom: 25px;
}

/* ===== GRID ===== */
.menu-container {
	width: 92%;
	margin: auto;
	padding-bottom: 40px;
}

.menu-grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
	gap: 24px;
}

/* ===== CARD ===== */
.menu-card {
	background: white;
	border-radius: 20px;
	overflow: hidden;
	transition: .3s;
}

.menu-card:hover {
	transform: translateY(-8px);
	box-shadow: 0 15px 30px rgba(0, 0, 0, .10);
}

/* IMAGE */
.menu-card img {
	width: 100%;
	height: 210px;
	object-fit: cover;
}

/* CONTENT */
.menu-card-content {
	padding: 16px;
}

.menu-card h3 {
	font-size: 21px;
	margin-bottom: 10px;
}

/* PRICE ROW */
.meta {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 12px;
}

.price {
	font-size: 19px;
	font-weight: bold;
}

.rating {
	background: #1ba672;
	padding: 5px 10px;
	border-radius: 8px;
	font-size: 13px;
	color: white;
}

/* DESCRIPTION */
.description {
	font-size: 14px;
	color: #666;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
	overflow: hidden;
}

/* BUTTON */
.add-btn {
	width: 100%;
	padding: 13px;
	margin-top: 18px;
	border: none;
	border-radius: 12px;
	background: #fc8019;
	color: white;
	font-weight: bold;
	cursor: pointer;
	transition: .3s;
}

.add-btn:hover {
	background: #e56f0e;
}

/* MOBILE */
@media ( max-width :768px) {
	.navbar {
		flex-direction: column;
		height: auto;
		padding: 20px;
		gap: 15px;
	}
	.heading {
		font-size: 28px;
	}
}

/* SCROLLBAR */
::-webkit-scrollbar {
	width: 8px;
}

::-webkit-scrollbar-thumb {
	background: #fc8019;
	border-radius: 10px;
}
</style>

</head>



<body>



	<nav class="navbar">

		<div class="logo">🍔 FoodZone</div>


		<div class="nav-buttons">

			<button class="nav-btn">Sign In</button>


			<button class="nav-btn">🛒</button>

		</div>

	</nav>




	<div class="heading">Popular Dishes 🍽</div>


	<div class="subtitle">Choose your favourite food and add to cart

	</div>




	<div class="menu-container">

		<div class="menu-grid">


			<%
			List<Menu> menuByRestaurantId =

					(List<Menu>) request.getAttribute("menuByRestaurantId");

			if (menuByRestaurantId != null && !menuByRestaurantId.isEmpty()) {

				for (Menu menu : menuByRestaurantId) {
			%>



			<div class="menu-card">

				<img src="<%=menu.getImagepath()%>">



				<div class="menu-card-content">

					<h3>

						<%=menu.getItemname()%>

					</h3>



					<div class="meta">

						<span class="price"> ₹ <%=menu.getPrice()%>

						</span> <span class="rating"> ⭐ <%=menu.getRatings()%>

						</span>

					</div>



					<p class="description">

						<%=menu.getDescription()%>

					</p>



					<form action="cart">

						<input type="hidden" name="menuId" value="<%=menu.getMenuid()%>">


						<input type="hidden" name="quantity" value="1"> <input
							type="hidden" name="restaurantId"
							value="<%=menu.getRestaurantid()%>"> <input
							type="hidden" name="action" value="add"> <input
							type="submit" class="add-btn" value="Add to Cart">

					</form>


				</div>

			</div>



			<%
			}

			} else {
			%>


			<h2>No items available</h2>


			<%
			}
			%>



		</div>

	</div>

</body>

</html>