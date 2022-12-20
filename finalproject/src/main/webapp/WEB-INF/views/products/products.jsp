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
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <!-- Owl Carousel: CSS -->
    <link rel="stylesheet" href="resources/owlcarousel/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/owlcarousel/owl.theme.default.min.css">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <title>PRODUCTS</title>
    <link rel="stylesheet" href="resources/css/font.css">
    <style>
        .card:hover {
            border-color: rgb(47, 49, 53);
            box-shadow: 0px 0px 10px 2px rgb(47, 49, 53);
        }
    </style>
</head>

<body>

	<jsp:include page="../common/header.jsp"/>
	
	<br><br>

    <div class="container">
        <br>

        <!-- Filter section -->
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

        <!-- List section -->
        <div class="album py-5 bg-light">
            <div class="container">
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5 g-1">
                    <div class="col">
                        <div class="card shadow-sm" style="cursor:pointer;" onclick="openModal();">
                            <div style="text-align:center;">
                                <img class="img-fluid img-responsive card-img-top" src="pics/1-1.jpg" alt="thumbnail">
                            </div>
                            <div class="card-body">
                                <h5><b>Fender</b></h5>
                                <p class="card-text">American Vintage II 1961 Stratocaster</p>
                                <small>0.00/5 | 0 Reviews</small>
                                <p class="card-text"><b>2,500,000 원</b></p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card shadow-sm" style="cursor:pointer;" onclick="openModal();">
                            <div style="text-align:center;">
                                <img class="img-fluid img-responsive card-img-top" src="pics/2-1.webp" alt="thumbnail">
                            </div>
                            <div class="card-body">
                                <h5><b>Fender</b></h5>
                                <p class="card-text">American Vintage II 1961 Stratocaster</p>
                                <small>0.00/5 | 0 Reviews</small>
                                <p class="card-text"><b>2,500,000 원</b></p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card shadow-sm" style="cursor:pointer;" onclick="openModal();">
                            <div style="text-align:center;">
                                <img class="img-fluid img-responsive card-img-top" src="pics/3-1.jpg" alt="thumbnail">
                            </div>
                            <div class="card-body">
                                <h5><b>Fender</b></h5>
                                <p class="card-text">American Vintage II 1961 Stratocaster</p>
                                <small>0.00/5 | 0 Reviews</small>
                                <p class="card-text"><b>2,500,000 원</b></p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card shadow-sm" style="cursor:pointer;" onclick="openModal();">
                            <div style="text-align:center;">
                                <img class="img-fluid img-responsive card-img-top" src="pics/1-1.jpg" alt="thumbnail">
                            </div>
                            <div class="card-body">
                                <h5><b>Fender</b></h5>
                                <p class="card-text">American Vintage II 1961 Stratocaster</p>
                                <small>0.00/5 | 0 Reviews</small>
                                <p class="card-text"><b>2,500,000 원</b></p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card shadow-sm" style="cursor:pointer;" onclick="openModal();">
                            <div style="text-align:center;">
                                <img class="img-fluid img-responsive card-img-top" src="pics/2-1.webp" alt="thumbnail">
                            </div>
                            <div class="card-body">
                                <h5><b>Fender</b></h5>
                                <p class="card-text">American Vintage II 1961 Stratocaster</p>
                                <small>0.00/5 | 0 Reviews</small>
                                <p class="card-text"><b>2,500,000 원</b></p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card shadow-sm" style="cursor:pointer;" onclick="openModal();">
                            <div style="text-align:center;">
                                <img class="img-fluid img-responsive card-img-top" src="pics/3-1.jpg" alt="thumbnail">
                            </div>
                            <div class="card-body">
                                <h5><b>Fender</b></h5>
                                <p class="card-text">American Vintage II 1961 Stratocaster</p>
                                <small>0.00/5 | 0 Reviews</small>
                                <p class="card-text"><b>2,500,000 원</b></p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card shadow-sm" style="cursor:pointer;" onclick="openModal();">
                            <div style="text-align:center;">
                                <img class="img-fluid img-responsive card-img-top" src="pics/1-1.jpg" alt="thumbnail">
                            </div>
                            <div class="card-body">
                                <h5><b>Fender</b></h5>
                                <p class="card-text">American Vintage II 1961 Stratocaster</p>
                                <small>0.00/5 | 0 Reviews</small>
                                <p class="card-text"><b>2,500,000 원</b></p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card shadow-sm" style="cursor:pointer;" onclick="openModal();">
                            <div style="text-align:center;">
                                <img class="img-fluid img-responsive card-img-top" src="pics/2-1.webp" alt="thumbnail">
                            </div>
                            <div class="card-body">
                                <h5><b>Fender</b></h5>
                                <p class="card-text">American Vintage II 1961 Stratocaster</p>
                                <small>0.00/5 | 0 Reviews</small>
                                <p class="card-text"><b>2,500,000 원</b></p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card shadow-sm" style="cursor:pointer;" onclick="openModal();">
                            <div style="text-align:center;">
                                <img class="img-fluid img-responsive card-img-top" src="pics/3-1.jpg" alt="thumbnail">
                            </div>
                            <div class="card-body">
                                <h5><b>Fender</b></h5>
                                <p class="card-text">American Vintage II 1961 Stratocaster</p>
                                <small>0.00/5 | 0 Reviews</small>
                                <p class="card-text"><b>2,500,000 원</b></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <br>

            <!-- Pagination section -->
            <div class="d-flex justify-content-center">
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="page-item active" aria-current="page"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                        <li class="page-item"><a class="page-link" href="#">6</a></li>
                        <li class="page-item"><a class="page-link" href="#">7</a></li>
                        <li class="page-item"><a class="page-link" href="#">8</a></li>
                        <li class="page-item"><a class="page-link" href="#">9</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

    </div>

    <!-- Modal: Product Details -->
    <div class="modal fade" id="productDetailsModal" tabindex="-1" aria-labelledby="productDetailsModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-fullscreen">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="productDetailsModalLabel"><b>PRODUCT DETAILS</b></h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row row-cols-1 row-cols-lg-2 g-5">
                            <div class="col">
                                <div class="row">
                                    <a id="bigPicture" href="pics/1-1.jpg" target="_blank"><img class="img-fluid"
                                            src="pics/1-1.jpg" alt="bigPicture"></a>
                                </div>
                                <br>
                                <div class="owl-product owl-carousel owl-theme row">
                                    <img class="item smallPicture" src="pics/1-1.jpg" alt="pic1"
                                        style="cursor:pointer;">
                                    <img class="item smallPicture" src="pics/1-2.jpg" alt="pic2"
                                        style="cursor:pointer;">
                                    <img class="item smallPicture" src="pics/1-3.jpg" alt="pic3"
                                        style="cursor:pointer;">
                                    <img class="item smallPicture" src="pics/1-4.webp" alt="pic4"
                                        style="cursor:pointer;">
                                    <img class="item smallPicture" src="pics/1-5.webp" alt="pic5"
                                        style="cursor:pointer;">
                                    <img class="item smallPicture" src="pics/1-6.webp" alt="pic6"
                                        style="cursor:pointer;">
                                </div>
                            </div>
                            <div class="col card-text">
                                <div class="row">
                                    <div class="card-text">
                                        <h2><b>Fender</b></h2>
                                        <h3><b>American Vintage II 1961 Stratocaster</b></h3>
                                        <h3>3-Tone Sunburst</h3>
                                        <small>PRODUCT_NO# 1</small>
                                        <h5>0.00/5 | 0 REVIEWS</h5>
                                    </div>
                                </div>
                                <br>
                                <hr>
                                <br>
                                <div class="row">
                                    <div class="card-text">
                                        <h5><b>Description</b></h5>
                                        <div id="product-description">
                                            <ul>
                                                <li>Made in USA</li>
                                                <li>Alder body with a gloss nitrocellulose lacquer finish</li>
                                                <li>Bolt-on maple neck in a medium C-shaped profile</li>
                                                <li>Slab rosewood fingerboard with 21 vintage tall frets and clay dot
                                                    inlays</li>
                                                <li>Trio of Pure Vintage ’61 single-coil Strat pickups</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="card-text">
                                        <h5><b>Colors</b></h5>
                                        <div class="owl-carousel owl-theme">
                                            <img class="item smallPicture" src="pics/1-1.jpg" alt="pic1"
                                                style="cursor:pointer;">
                                            <img class="item smallPicture" src="pics/2-1.webp" alt="pic2"
                                                style="cursor:pointer;">
                                            <img class="item smallPicture" src="pics/3-1.jpg" alt="pic3"
                                                style="cursor:pointer;">
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <hr>
                                <br>
                                <div class="row">
                                    <div class="card-text">
                                        <h4><b>PRICE: 2,500,000 원</b></h4>
                                        <br>
                                        <div class="btn-group" role="group" aria-label="cart or wishlist">
                                            <button class="btn btn-lg btn-outline-danger" onclick="addedToCart();"><i
                                                    class="bi bi-bag"></i> Add to Cart</button>
                                            <button class="btn btn-lg btn-outline-danger"
                                                onclick="addedToWishlist();"><i class="bi bi-heart"></i> Add to
                                                Wishlist</button>
                                        </div>
                                    </div>
                                </div>
                                <br>
                            </div>
                        </div>
                        <hr>
                        <br>
                        <div class="row">
                            <div class="container">
                                <h3><b>REVIEWS</b> (3)</h3>
                                <div class="container">
                                    <table class="table table-sm table-hover" id="reviewTable" style="cursor:pointer;">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th>User</th>
                                                <th>Rating</th>
                                                <th>Review</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><small>1</small></td>
                                                <td>edjeon6969</td>
                                                <td>5 / 5</td>
                                                <td><a href="#" onclick="openReviewModal();">See Review</a></td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>edjeon6969</td>
                                                <td>5 / 5</td>
                                                <td><a href="#" onclick="openReviewModal();">See Review</a></td>
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>edjeon6969</td>
                                                <td>5 / 5</td>
                                                <td><a href="#" onclick="openReviewModal();">See Review</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal: Review Modal -->
    <div class="modal fade" id="reviewModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-2" aria-labelledby="reviewModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-lg modal-fullscreen-sm-down">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="reviewModalLabel"><b>REVIEW</b></h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row row-cols-1 row-cols-lg-2 g-2">
                        <div class="col card-text">
                            <a href="pics/IMG_3268.jpg" target="_blank"><img class="img-fluid mx-auto d-block" src="pics/IMG_3268.jpg" alt="reviewImg"></a>
                        </div>
                        <div class="col card-text">
                            <p class="card-text"><b>edjeon6969</b></p>
                            <p class="card-text"><b>2022-12-14</b></p>
                            <p class="card-text"><b>USER RATING: 4</b></p>
                            <p class="card-text"><b>USER REVIEW:</b></p>
                            <p class="card-text" style="white-space:pre-wrap;">이 곳은 beach인가 bitch인가 birthday를 축하해야 하나 bitchday를 축하해야 하나 그것이 문제로다</p>
                        </div>
                    </div>
                </div>
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
                <div class="accordion-item">
                    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                            aria-controls="panelsStayOpen-collapseOne">
                            Category
                        </button>
                    </h2>
                    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show"
                        aria-labelledby="panelsStayOpen-headingOne">
                        <div class="accordion-body">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="category" id="category1" value="1">
                                <label class="form-check-label" for="category1">
                                    Electric Guitars
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="category" id="category2" value="2">
                                <label class="form-check-label" for="category2">
                                    Acoustic Guitars
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="category" id="category3" value="3">
                                <label class="form-check-label" for="category3">
                                    Basses
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="true"
                            aria-controls="panelsStayOpen-collapseTwo">
                            Type
                        </button>
                    </h2>
                    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse show"
                        aria-labelledby="panelsStayOpen-headingTwo">
                        <div class="accordion-body">
                            <div class="form-check type1">
                                <input class="form-check-input inputType1" type="radio" name="type" id="type1a"
                                    value="1">
                                <label class="form-check-label" for="type1a">
                                    Solid Body
                                </label>
                            </div>
                            <div class="form-check type1">
                                <input class="form-check-input inputType1" type="radio" name="type" id="type1b"
                                    value="2">
                                <label class="form-check-label" for="type1b">
                                    Hollow & Semi-Hollow Body
                                </label>
                            </div>
                            <div class="form-check type2">
                                <input class="form-check-input inputType2" type="radio" name="type" id="type2a"
                                    value="3">
                                <label class="form-check-label" for="type2a">
                                    6-String
                                </label>
                            </div>
                            <div class="form-check type2">
                                <input class="form-check-input inputType2" type="radio" name="type" id="type2b"
                                    value="4">
                                <label class="form-check-label" for="type2b">
                                    12-String
                                </label>
                            </div>
                            <div class="form-check type2">
                                <input class="form-check-input inputType2" type="radio" name="type" id="type2c"
                                    value="5">
                                <label class="form-check-label" for="type2c">
                                    Acoustic-Electric
                                </label>
                            </div>
                            <div class="form-check type2">
                                <input class="form-check-input inputType2" type="radio" name="type" id="type2d"
                                    value="6">
                                <label class="form-check-label" for="type2d">
                                    Classical & Nylon
                                </label>
                            </div>
                            <div class="form-check type3">
                                <input class="form-check-input inputType3" type="radio" name="type" id="type3a"
                                    value="7">
                                <label class="form-check-label" for="type3a">
                                    Electric: 4-String
                                </label>
                            </div>
                            <div class="form-check type3">
                                <input class="form-check-input inputType3" type="radio" name="type" id="type3b"
                                    value="8">
                                <label class="form-check-label" for="type3b">
                                    Electric: 5+ String
                                </label>
                            </div>
                            <div class="form-check type3">
                                <input class="form-check-input inputType3" type="radio" name="type" id="type3c"
                                    value="9">
                                <label class="form-check-label" for="type3c">
                                    Acoustic
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="panelsStayOpen-headingThree">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="true"
                            aria-controls="panelsStayOpen-collapseThree">
                            Brands
                        </button>
                    </h2>
                    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse show"
                        aria-labelledby="panelsStayOpen-headingThree">
                        <div class="accordion-body">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="brand1" name="brand" value="1">
                                <label class="form-check-label" for="brand1">
                                    Fender
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="brand2" name="brand" value="2">
                                <label class="form-check-label" for="brand2">
                                    Gibson
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="brand3" name="brand" value="3">
                                <label class="form-check-label" for="brand3">
                                    Gretsch
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="brand4" name="brand" value="4">
                                <label class="form-check-label" for="brand4">
                                    Rickenbacker
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="brand5" name="brand" value="5">
                                <label class="form-check-label" for="brand5">
                                    Martin
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="brand6" name="brand" value="6">
                                <label class="form-check-label" for="brand6">
                                    Taylor
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="brand7" name="brand" value="7">
                                <label class="form-check-label" for="brand6">
                                    MusicMan
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="panelsStayOpen-headingFour">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="true"
                            aria-controls="panelsStayOpen-collapseFour">
                            Model
                        </button>
                    </h2>
                    <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse show"
                        aria-labelledby="panelsStayOpen-headingFour">
                        <div class="accordion-body">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="model1" name="model1" value="1">
                                <label class="form-check-label" for="model1">
                                    Stratocaster
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="model2" name="model2" value="2">
                                <label class="form-check-label" for="model2">
                                    Telecaster
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="model1" name="model3" value="3">
                                <label class="form-check-label" for="model3">
                                    Jazzmaster
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="model4" name="model4" value="4">
                                <label class="form-check-label" for="model4">
                                    Les Paul
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="model5" name="model5" value="5">
                                <label class="form-check-label" for="model5">
                                    SG
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="model6" name="model6" value="6">
                                <label class="form-check-label" for="model6">
                                    ES
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="model7" name="model7" value="7">
                                <label class="form-check-label" for="model7">
                                    Jazz Bass
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="model1" name="model8" value="8">
                                <label class="form-check-label" for="model8">
                                    D-28
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="accordion-item">
                    <h2 class="accordion-header" id="panelsStayOpen-headingFive">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-collapseFive" aria-expanded="true"
                            aria-controls="panelsStayOpen-collapseFive">
                            Price
                        </button>
                    </h2>
                    <div id="panelsStayOpen-collapseFive" class="accordion-collapse collapse show"
                        aria-labelledby="panelsStayOpen-headingFive">
                        <div class="accordion-body">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="price1" name="price1" value="1">
                                <label class="form-check-label" for="price1">
                                    250,000원 미만
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="price2" name="price2" value="2">
                                <label class="form-check-label" for="price2">
                                    250,000원 - 500,000원
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="price3" name="price3" value="3">
                                <label class="form-check-label" for="price3">
                                    500,000원 - 1,000,000원
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="price4" name="price4" value="4">
                                <label class="form-check-label" for="price4">
                                    1,000,000원 - 2,500,000원
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="price5" name="price5" value="5">
                                <label class="form-check-label" for="price5">
                                    2,500,000원 - 5,000,000원
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="price6" name="price6" value="6">
                                <label class="form-check-label" for="price6">
                                    5,000,000원 이상
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <jsp:include page="../common/footer.jsp"/>

</body>
<!-- Owl Carousel: JavaScript -->
<script src="resources/owlcarousel/owl.carousel.min.js"></script>
<!-- JavaScript for Modal: Product Details -->
<script>
    $(document).ready(function () {
        $(".owl-carousel").owlCarousel();
    });


    function openModal(productNo) {
        const productDetailsModal = new bootstrap.Modal(document.getElementById('productDetailsModal'));
        productDetailsModal.show();
    }

    $(function () {
        $(".smallPicture").click(function () {
            $("#bigPicture").attr('href', this.src);
            $("#bigPicture>img").attr('src', this.src);
        });
    });
</script>
<!-- JavaScript for Owl Carousel -->
<script>
    $('.owl-product').owlCarousel({
        loop: false,
        margin: 15,
        nav: false,
        responsive: {
            600: {
                items: 3
            },
            1000: {
                items: 5
            }
        }
    });
</script>
<!-- JavaScript for Review: Modal -->
<script>
    function openReviewModal(reviewNo) {
        const reviewModal = new bootstrap.Modal(document.getElementById('reviewModal'));
        reviewModal.show();
    }
</script>
<!-- JavaScript for Filter -->
<script>
    $(function () {
        if ($("#category1").click(function () {
            $(".inputType2").prop("checked", false);
            $(".inputType3").prop("checked", false);
            $(".type1").css("display", "block");
            $(".type2").css("display", "none");
            $(".type3").css("display", "none");
        }));
        if ($("#category2").click(function () {
            $(".inputType1").prop("checked", false);
            $(".inputType3").prop("checked", false);
            $(".type1").css("display", "none");
            $(".type2").css("display", "block");
            $(".type3").css("display", "none");
        }));
        if ($("#category3").click(function () {
            $(".inputType1").prop("checked", false);
            $(".inputType2").prop("checked", false);
            $(".type1").css("display", "none");
            $(".type2").css("display", "none");
            $(".type3").css("display", "block");
        }));
    });
</script>
<!-- JavaScript for confirmation: Add to Cart, Add to Wishlist -->
<script>
    function addedToCart() {
        window.alert("Your product was added to cart.");
    };

    function addedToWishlist() {
        window.alert("Your product was added to your wishlist.");
    };
</script>

</html>