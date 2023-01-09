<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PRODUCTS</title>
    <link rel="stylesheet" href="resources/css/font.css">
    <style>
        .card:hover {
            border-color: rgb(47, 49, 53);
            box-shadow: 0px 0px 10px 2px rgb(47, 49, 53);
        }
    </style>
</head>

<jsp:include page="../common/header.jsp"/>
<body>

	<div class="bg-light rounded-3">
	<br><br>
      <div class="container-fluid py-5 text-white" style="background-image: url('resources/image/jumbotron/jumbotron-product.jpg');">
        <h1 class="display-5 fw-bold">Products</h1>
        <p class="col-md-8 fs-4">Electric, Acoustic Guitars and basses</p>
      </div>
    </div>

	<div class="container">
		<br>
		<!-- Filter section -->
		<div class="row">
			<div class="col-4 d-grid mx-auto">
				<button class="btn btn-outline-dark" type="button"
					data-bs-toggle="offcanvas" href="#offcanvasFilter"
					aria-controls="offcanvasFilter">FILTER</button>
			</div>
			<div class="col-4">
				<select class="form-select" name="sort" id="sortBy">
					<option value="1">Top Sellers</option>
					<option value="2">Top Reviews</option>
					<option value="3">Top Ratings</option>
					<option value="4">Price - High to Low</option>
					<option value="5">Price - Low to High</option>
					<option value="6">Newest First</option>
					<option value="7">Brand Name A-Z</option>
				</select>
			</div>
			<div class="col-4">
				<select class="form-select" name="boardLimit" id="boardLimit">
					<option value="20">Display: 20</option>
					<option value="40">Display: 40</option>
					<option value="60">Display: 60</option>
				</select>
			</div>
		</div>

		<!-- List section -->
		<div class="album py-5 bg-light">
			<!--  productList -->
			<div class="container" id="productList-area"></div>
			<br><br>

			<div class="d-flex justify-content-center">
				<nav aria-label="Page navigation">
					<ul class="pagination" id="pageInfo-area"></ul>
				</nav>
			</div>
		</div>
	</div>

    <!-- Offcanvas: Filter Items -->
    <div class="offcanvas offcanvas-start" data-bs-scroll="true" tabindex="-1" id="offcanvasFilter"
        aria-labelledby="offcanvasFilterLabel">
        <div class="offcanvas-header">
            <h2 class="offcanvas-title" id="offcanvasFilterLabel"><b>FILTER</b></h2>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <div class="accordion" id="accordionFilter">                                   
            	<jsp:include page="filter.jsp"/>  
            </div>
        </div>
    </div>
</body>
<jsp:include page="../common/footer.jsp"/>

</html>