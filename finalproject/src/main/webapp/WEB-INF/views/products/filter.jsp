<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FILTER</title>

<script src="resources/js/filter.js"></script>
</head>
<body>
	<!-- Offcanvas: Filter Items -->
	<div class="accordion" id="accordionFilter">
		<div class="accordion-item">
			<h2 class="accordion-header" id="panelsStayOpen-headingThree">
				<button class="accordion-button" type="button"
					data-bs-toggle="collapse"
					data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="true"
					aria-controls="panelsStayOpen-collapseThree">Brands</button>
			</h2>
			<div id="panelsStayOpen-collapseThree"
				class="accordion-collapse collapse show"
				aria-labelledby="panelsStayOpen-headingThree">
				<div class="accordion-body" id="brand-area"></div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header" id="panelsStayOpen-headingFour">
				<button class="accordion-button" type="button"
					data-bs-toggle="collapse"
					data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="true"
					aria-controls="panelsStayOpen-collapseFour">Model</button>
			</h2>
			<div id="panelsStayOpen-collapseFour"
				class="accordion-collapse collapse show"
				aria-labelledby="panelsStayOpen-headingFour">
				<div class="accordion-body" id="model-area"></div>
			</div>
		</div>
		<div class="accordion-item">
			<h2 class="accordion-header" id="panelsStayOpen-headingFive">
				<button class="accordion-button" type="button"
					data-bs-toggle="collapse"
					data-bs-target="#panelsStayOpen-collapseFive" aria-expanded="true"
					aria-controls="panelsStayOpen-collapseFive">Price</button>
			</h2>
			<div id="panelsStayOpen-collapseFive"
				class="accordion-collapse collapse show"
				aria-labelledby="panelsStayOpen-headingFive">
				<div class="accordion-body" id="price-area"></div>
			</div>
		</div>
	</div>
</body>
</html>