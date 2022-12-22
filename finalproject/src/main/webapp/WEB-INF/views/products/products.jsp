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

	<br><br><br><br>

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
                <select class="form-select" name="boardLimit" id="boardLimit">
                    <option value="20">Display: 20</option>
                    <option value="40">Display: 40</option>
                    <option value="60">Display: 60</option>
                </select>
            </div>
        </div>

        <!-- List section -->
        <div class="album py-5 bg-light">
            <div class="container">
                <c:choose>
                	<c:when test="${not empty pList}">
		                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5 g-1">
		                    <c:forEach var="p" items="${pList}">
			                    <div class="col">
			                        <div class="card shadow-sm" style="cursor:pointer;" onclick="openProductModal();">
			                            <div style="text-align:center;">
			                                <img class="img-fluid img-responsive card-img-top productListImg" src="${p.filePath}${p.changeName}" alt="thumbnail">
			                            </div>
			                            <div class="card-body">
			                                <h5><b>${p.brand}</b></h5>
			                                <p class="card-text" style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">${p.name}</p>
			                                <small>${p.rating}/5 | ${p.count} Reviews</small>
			                                <p class="card-text"><b>${p.price} 원</b></p>
			                            </div>
			                        </div>
			                    </div>
		                    </c:forEach>
		                </div>
                	</c:when>
                	<c:otherwise>
                		<div class="text-center">
	                		<h3 class="text-muted">조회한 상품이 없습니다</h3>
                		</div>
                	</c:otherwise>
                </c:choose>
                
            </div>
            <br>
            <br>

            <!-- Pagination section -->
            <c:if test="${not empty pList}">
	            <div class="d-flex justify-content-center">
	                <nav aria-label="Page navigation">
	                    <ul class="pagination">
	                        <c:if test="${pi.currentPage ne 1}">
		                        <li class="page-item">
		                            <a class="page-link" href="list.pr?currentPage=${pi.currentPage - 1}" aria-label="Previous">
		                                <span aria-hidden="true">&laquo;</span>
		                            </a>
		                        </li>
	                        </c:if>
	                        <c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
	                        	<li class="page-item"><a class="page-link" href="list.pr?currentPage=${p}">${p}</a></li>
	                        </c:forEach>
	                        <c:if test="${pi.currentPage ne pi.endPage}">
		                        <li class="page-item">
		                            <a class="page-link" href="list.pr?currentPage=${pi.currentPage + 1}" aria-label="Next">
		                                <span aria-hidden="true">&raquo;</span>
		                            </a>
		                        </li>
	                        </c:if>
	                    </ul>
	                </nav>
	            </div>
            </c:if>
            
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
                                    <a id="bigPicture" href="" target="_blank"><img class="img-fluid"
                                            src="" alt="bigPicture"></a>
                                </div>
                                <br>
                                <div class="owl-product owl-carousel owl-theme row">
                                    <img class="item smallPicture" src="" alt="pic1"
                                        style="cursor:pointer;">
                                    <img class="item smallPicture" src="" alt="pic2"
                                        style="cursor:pointer;">
                                    <img class="item smallPicture" src="" alt="pic3"
                                        style="cursor:pointer;">
                                    <img class="item smallPicture" src="" alt="pic4"
                                        style="cursor:pointer;">
                                    <img class="item smallPicture" src="" alt="pic5"
                                        style="cursor:pointer;">
                                    <img class="item smallPicture" src="" alt="pic6"
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
                                            <img class="item smallPicture" src="" alt="pic1"
                                                style="cursor:pointer;">
                                            <img class="item smallPicture" src="" alt="pic2"
                                                style="cursor:pointer;">
                                            <img class="item smallPicture" src="" alt="pic3"
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
                            <a href="pics/IMG_3268.jpg" target="_blank"><img class="img-fluid mx-auto d-block" src="" alt="reviewImg"></a>
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
            	<jsp:include page="filter.jsp"/>  
            </div>
        </div>
    </div>
</body>
<jsp:include page="../common/footer.jsp"/>

<!-- JavaScript for Products page -->
<script src="resources/js/products.js"></script>

</html>