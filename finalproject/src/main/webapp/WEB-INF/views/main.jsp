<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
    <!-- Owl Carousel: CSS -->
    <link rel="stylesheet" href="owlcarousel/owl.carousel.min.css">
    <link rel="stylesheet" href="owlcarousel/owl.theme.default.min.css">
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="css/font.css">
    <title>PRODUCTS</title>
</head>

<body>
    <div class="container">
        <br>
        <div class="row">
            <div class="col-4 d-grid mx-auto">
                <button class="btn btn-outline-dark" type="button" data-bs-toggle="offcanvas" href="#offcanvasFilter"
                    aria-controls="offcanvasFilter">FILTER</button>
            </div>
            <div class="col-4">
                <select class="form-select" name="sortBy" id="sortBy">
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
                <select class="form-select" name="display" id="display">
                    <option value="20">Display: 20</option>
                    <option value="40">Display: 40</option>
                    <option value="60">Display: 60</option>
                </select>
            </div>
        </div>
        
	<%@ include file="common/filter.jsp" %>
</body>

</html>