<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="
com.tap.model.Restaurant,
java.util.List"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width,
initial-scale=1.0">

<title>FoodZone</title>

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
	height: 80px;
	background: white;
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
	font-size: 34px;
	font-weight: bold;
	color: #fc8019;
}

/* ===== SEARCH ===== */
.search-container {
	width: 45%;
	position: relative;
}

.search-bar {
	width: 100%;
	padding: 16px 50px 16px 18px;
	border: none;
	outline: none;
	border-radius: 15px;
	background: #f2f2f2;
	font-size: 15px;
}

.search-button {
	position: absolute;
	right: 15px;
	top: 50%;
	transform: translateY(-50%);
	border: none;
	background: none;
	cursor: pointer;
}

/* ===== BUTTON ===== */
.nav-buttons {
	display: flex;
	gap: 15px;
}

.nav-btn {
	padding: 12px 18px;
	border-radius: 12px;
	border: 1px solid #ddd;
	text-decoration: none;
	color: #333;
	font-weight: 600;
}

.nav-btn:hover {
	background: #fc8019;
	color: white;
}

/* ===== HERO ===== */
.hero {
	width: 92%;
	margin: 30px auto;
}

.hero h1 {
	font-size: 42px;
	margin-bottom: 10px;
}

.hero p {
	color: #666;
}

/* ===== GRID ===== */
.container {
	width: 92%;
	margin: auto;
}

.card-grid {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
	gap: 24px;
}

/* ===== CARD ===== */
.card {
	background: white;
	border-radius: 20px;
	overflow: hidden;
	transition: .3s;
}

.card:hover {
	transform: translateY(-8px);
	box-shadow: 0 12px 30px rgba(0, 0, 0, .10);
}

.card img {
	width: 100%;
	height: 200px;
	object-fit: cover;
}

.card-content {
	padding: 16px;
}

.card h3 {
	font-size: 22px;
}

.address {
	font-size: 14px;
	color: #666;
	overflow: hidden;
	display: -webkit-box;
	-webkit-line-clamp: 1;
	-webkit-box-orient: vertical;
}

.meta {
	display: flex;
	justify-content: space-between;
	margin-top: 12px;
}

.rating {
	background: #1ba672;
	padding: 5px 10px;
	border-radius: 8px;
	font-size: 13px;
	color: white;
}

/* MOBILE */
@media ( max-width :768px) {
	.navbar {
		flex-direction: column;
		height: auto;
		padding: 20px;
		gap: 15px;
	}
	.search-container {
		width: 100%;
	}
	.hero h1 {
		font-size: 32px;
	}
}
</style>

</head>



<body>



	<nav class="navbar">

		<div class="logo">🍔 FoodZone</div>



		<div class="search-container">

			<form action="SearchServlet" method="POST">

				<input type="text" name="searchQuery"
					placeholder="Search restaurants..." class="search-bar">


				<button type="submit" class="search-button">🔍</button>

			</form>

		</div>



		<div class="nav-buttons">

			<a href="login.jsp" class="nav-btn"> Sign In </a> <a href="cart.jsp"
				class="nav-btn"> 🛒 </a>

		</div>

	</nav>




	<div class="hero">

		<h1>Order food to your doorstep 🚚</h1>


		<p>Discover restaurants near you</p>

	</div>





	<div class="container">

		<div class="card-grid">


			<%
			List<Restaurant> allRestaurants =(List<Restaurant>) request.getAttribute("allRestaurants");

			if (allRestaurants != null) {

				for (Restaurant restaurant : allRestaurants) {
			%>



			<a style="text-decoration: none; color: inherit"
				href="menu?restaurantId=
<%=restaurant.getRestaurantid()%>">


				<div class="card">

					<img src="<%=restaurant.getImagepath()%>">



					<div class="card-content">

						<h3>

							<%=restaurant.getName()%>

						</h3>



						<p class="address">

							📍
							<%=restaurant.getAddress()%>

						</p>



						<p>

							🍽
							<%=restaurant.getCusinetype()%>

						</p>



						<div class="meta">

							<span> 🚚 <%=restaurant.getDeliverytime()%>

							</span> <span class="rating"> ⭐ <%=restaurant.getRating()%>

							</span>

						</div>

					</div>

				</div>

			</a>



			<%
			}
			}
			%>



		</div>

	</div>

</body>

</html>