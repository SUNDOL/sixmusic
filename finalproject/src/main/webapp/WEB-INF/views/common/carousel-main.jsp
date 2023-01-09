<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CAROUSEL-MAIN</title>
</head>
<body>
<br>
<div class="bg-light rounded-3 py-5">
	<div id="carousel-main" class="carousel slide" data-bs-ride="false">
		<div class="carousel-indicators">
		    <button type="button" data-bs-target="#carousel-main" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    <button type="button" data-bs-target="#carousel-main" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    <button type="button" data-bs-target="#carousel-main" data-bs-slide-to="2" aria-label="Slide 3"></button>
		    <button type="button" data-bs-target="#carousel-main" data-bs-slide-to="3" aria-label="Slide 4"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
		    	<img src="resources/image/carousel-main/carousel-main-1.jpg" class="d-block w-100" alt="carousel-main-1">
		    	<div class="carousel-caption">
		        	<h1>Welcome to SIXMUSIC</h1>
		        	<p>Don't run back inside, darling, you know what I'm here for</p>
		      	</div>
		    </div>
		    <div class="carousel-item">
		    	<img src="resources/image/carousel-main/carousel-main-2.jpg" class="d-block w-100" alt="carousel-main-2">
		      	<div class="carousel-caption">
		        	<h1>Electric Guitars</h1>
		        	<p>Don't let the days go by, could have been easier on you</p>
		      	</div>
		    </div>
		    <div class="carousel-item">
		    	<img src="resources/image/carousel-main/carousel-main-3.jpg" class="d-block w-100" alt="carousel-main-3">
		      	<div class="carousel-caption">
		        	<h1>Acoustic Guitars</h1>
		        	<p>I see the girls walk by dressed in their summer clothes</p>
		      	</div>
		    </div>
		    <div class="carousel-item">
		    	<img src="resources/image/carousel-main/carousel-main-4.jpg" class="d-block w-100" alt="carousel-main-3">
		      	<div class="carousel-caption">
		        	<h1>Basses</h1>
		        	<p>Come on baby, light my fire</p>
		      	</div>
		    </div>
		</div>
		<button class="carousel-control-prev" type="button" data-bs-target="#carousel-main" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button" data-bs-target="#carousel-main" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Next</span>
		</button>
	</div>
	<br>
	<div class="container">
		<h2 class="fs-1 fw-bold" id="bestSellers">Best Sellers</h2>
		<div class="owl-bestSellers owl-carousel owl-theme g-1"></div>
		<br>
		<h2 class="fs-1 fw-bold" id="newArrivals">New Arrivals</h2>
		<div class="owl-newArrivals owl-carousel owl-theme g-1"></div>
		<br>
	</div>
</div>

</body>
<script src="resources/js/main-carousel.js"></script>
<script>
	mainview();
</script>
</html>