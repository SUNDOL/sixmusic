<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
    <!-- Owl Carousel: CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/owlcarousel/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/owlcarousel/owl.theme.default.min.css">
    <title>HEADER</title>
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <!-- Universal Stylesheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font.css">
    <style>
        .offcanvas-size-xl {
            --bs-offcanvas-width: min(95vw, 1200px) !important;
        }

        .card:hover {
            border-color: rgb(47, 49, 53);
            box-shadow: 0px 0px 10px 2px rgb(47, 49, 53);
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggler1"
                aria-controls="navbarToggler1" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <a class="navbar-brand" href="/sixmusic" style="font-size:2em;"><b><i
                        class="bi bi-music-note-beamed"></i>SIXMUSIC</b></a>

            <button class="navbar-toggler position-relative" type="button" data-bs-toggle="offcanvas"
                data-bs-target="#offcanvasCart" aria-controls="offcanvasCart" aria-expanded="false"
                aria-label="Toggle offcanvasCart">
                <span>
                    <i class="bi bi-bag" style="font-size: 1.5rem;"></i>
                    <c:if test="${not empty loginUser}">
                    <span class="position-absolute top-0 start-100 translate-middle p-2 bg-danger rounded-circle" id="cartAlert" style="display:none;">
                        <span class="visually-hidden">New alerts</span>
                    </span>
                    </c:if>
                </span>
            </button>
            <div class="collapse navbar-collapse" id="navbarToggler1">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            ELECTRIC GUITARS
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark">
                            <li><a class="dropdown-item" href="form.pr?typeNo=1">Solid-Body</a></li>
                            <li><a class="dropdown-item" href="form.pr?typeNo=2">Hollow & Semi-Hollow Body</a></li>

                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            ACOUSTIC GUITARS
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark">
                            <li><a class="dropdown-item" href="form.pr?typeNo=3">6-String</a></li>
                            <li><a class="dropdown-item" href="form.pr?typeNo=4">12-String</a></li>
                            <li><a class="dropdown-item" href="form.pr?typeNo=5">Acoustic-Electric</a></li>
                            <li><a class="dropdown-item" href="form.pr?typeNo=6">Classical & Nylon</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            BASSES
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark">
                            <li><a class="dropdown-item" href="form.pr?typeNo=7">Electric: 4-String</a></li>
                            <li><a class="dropdown-item" href="form.pr?typeNo=8">Electric: 5+ String</a></li>
                            <li><a class="dropdown-item" href="form.pr?typeNo=9">Acoustic</a></li>
                        </ul>
                    </li>
                </ul>

                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            COMMUNITIES
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark">
                            <li><a class="dropdown-item" href="#">Electric Guitar Community</a></li>
                            <li>
                                <hr class="dropdown-divider bg-light">
                            </li>
                            <li><a class="dropdown-item" href="#">Acoustic Guitar Community</a></li>
                            <li>
                                <hr class="dropdown-divider bg-light">
                            </li>
                            <li><a class="dropdown-item" href="#">Bass Community</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">BLOG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">ANNOUNCEMENTS</a>
                    </li>
                </ul>

                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <c:if test="${empty loginUser}">
                        <li class="nav-item">
		                    <a class="nav-link" data-bs-toggle="modal" href="#loginModal" role="button"
		                        aria-controls="loginModal">
		                        SIGN IN
		                    </a>
                        </li>
                    </c:if>
                    <c:if test="${not empty loginUser && loginUser.gradeNo ne 3}">
	                    <li class="nav-item dropdown">
	                    	<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
	                        aria-expanded="false">
	                        ${loginUser.memberNickname}님
	                        </a>
	                        	<ul class="dropdown-menu dropdown-menu-dark">
	                            	<li><a class="dropdown-item" href="myAccount.me">My Account</a></li>
	                            	<li><a class="dropdown-item" href="orderHistory.me">My Order History</a></li>
	                            	<li><a class="dropdown-item" href="logout.me">Sign Out</a></li>
	                        	</ul>
	                    </li>
                    </c:if>
                    <c:if test="${not empty loginUser && loginUser.gradeNo eq 3}">
	                    <li class="nav-item dropdown">
	                    	<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
	                        aria-expanded="false">
	                        ${loginUser.memberNickname}님
	                        </a>
	                        	<ul class="dropdown-menu dropdown-menu-dark">
	                        		<li><a class="dropdown-item" href="admin.ad">Administrator</a></li>
	                            	<li><a class="dropdown-item" href="myAccount.me">My Account</a></li>
	                            	<li><a class="dropdown-item" href="orderHistory.me">My Order History</a></li>
	                            	<li><a class="dropdown-item" href="logout.me">Sign Out</a></li>
	                        	</ul>
	                    </li>
                    </c:if>
                    <li>
                        <a class="nav-link" data-bs-toggle="offcanvas" href="#offcanvasCart" role="button"
                            aria-controls="offcanvasCart">
                            CART
                            <c:if test="${not empty loginUser}">
                            <span class="badge text-bg-danger rounded-circle" id="cartLength-min" style="display:none;">0</span>
                            </c:if>                            
                        </a>
                    </li>
                </ul>
            </div>

        </div>
    </nav>

    <!-- Modal: Login -->
    <div class="modal fade" id="loginModal" tabindex="-2" aria-labelledby="loginModalLabel" aria-hidden="false">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="modal-title" id="loginModalLabel"><b>SIGN IN</b></h2>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="login.me" method="post">
                        <div class="form-floating mb-3">
                            <input type="email" name="memberId" class="form-control" id="loginId"
                                placeholder="user@example.com" required>
                            <label for="loginId">ID (user@example.com)</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="password" name="memberPwd" class="form-control" id="loginPwd"
                                placeholder="Password" required>
                            <label for="loginPwd">Password</label>
                        </div>
                        <div class="d-grid col-8 mx-auto">
                            <button class="btn btn-lg btn-dark" type="submit">SIGN IN</button>
                        </div>
                    </form>
                    <hr>
                    <div class="d-grid" style="text-align:center;">
                        <a href="#" onclick="kakaoLogin();"><img src="${pageContext.request.contextPath}/resources/kakaologinbuttonimg/kakao_login_medium_wide.png" alt="kakaoLogin"></a>
                    </div>
                </div>
                <div class="modal-footer">
                    <a href="#" style="color:#000; text-decoration:none;">Forgot ID?</a>&nbsp;|&nbsp;
                    <a href="#" style="color:#000; text-decoration:none;">Forgot Password?</a>&nbsp;|&nbsp;
                    <a href="signUp.me" style="color:#000; text-decoration:none;">Sign Up</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Offcanvas: Cart -->
    <div class="offcanvas offcanvas-end offcanvas-size-xl" tabindex="-1" id="offcanvasCart"
        aria-labelledby="offcanvasCartLabel">
        <div class="offcanvas-header">
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
        
            <div class="row g-1">
                <div class="card-body">
                    <a class="nav-link fs-3" href="#cartCollapse" data-bs-toggle="collapse" aria-expanded="false"
                        aria-controls="cartCollapse">
                        <strong><i class="bi bi-bag"></i> My Cart (<span id="cartLength">0</span>)</strong>
		            </a>
		            <br>
			        	<div class="collapse" id="cartCollapse">
				            <c:if test="${empty loginUser}">
				            	<h3 class="text-muted">로그인 후 이용 가능합니다</h3>
				            	<br> 	
				            </c:if>
				            <c:if test="${not empty loginUser}">
					            <div class="card-body text-center">
					           	<div class="owl-cart owl-carousel owl-theme">
					           	</div>
					           	<div class="card-body" id="confirmation">
	                            	<br>
	                            	<div class="card-text fs-5 text-end">TOTAL: <strong id="totalPrice"></strong> 원</div>
	                            	<div class="card-text text-end"><a href="confirmation.or" class="text-muted">Confirm your order</a></div>
                        		</div>
				            	<br>
				            	</div>
				           	</c:if>
			           	</div>
		         </div>
            </div>
            
            <div class="row g-1">
                <div class="card-body">
                    <a class="nav-link fs-3" href="#wishlistCollapse" data-bs-toggle="collapse" aria-expanded="false"
                        aria-controls="wishlistCollapse">
                        <strong><i class="bi bi-heart"></i> My Wishlist (<span id="wishlistLength">0</span>)</strong>
		            </a>
		            <br>
			        	<div class="collapse" id="wishlistCollapse">
				            <c:if test="${empty loginUser}">
				            	<h3 class="text-muted">로그인 후 이용 가능합니다</h3>
				            	<br>
				            </c:if>
				            <c:if test="${not empty loginUser}">
					            <div class="card-body text-center">
					           	<div class="owl-wishlist owl-carousel owl-theme">
					           	</div>
				            <br>
				            </div>
				           	</c:if>
			           	</div>
		         </div>
            </div>
            
            <c:if test="${not empty loginUser}">
            <div class="row g-1">
                <div class="card-body">
                    <a class="nav-link fs-3" href="orderHistory.me">
                        <strong><i class="bi bi-archive"></i> My Order History</strong>
                    </a>
                    <br>
                </div>
            </div>
            </c:if>
            <c:if test="${empty loginUser}">
            <div class="row g-1">
                <div class="card-body">
                    <a class="nav-link fs-3" href="#" onclick="loginRequired();">
                        <strong><i class="bi bi-archive"></i> My Order History</strong>
                    </a>
                    <br>
                </div>
            </div>
            </c:if>
            
            
            
            <c:if test="${not empty loginUser}">
            <div class="row g-1">
                <div class="card-body">
                    <a class="nav-link fs-3" href="myAccount.me">
                        <strong><i class="bi bi-gear-wide-connected"></i> My Account</strong>
                    </a>
                    <br>
                </div>
            </div>
            </c:if>
            <c:if test="${empty loginUser}">
            <div class="row g-1">
                <div class="card-body">
                    <a class="nav-link fs-3" href="#" onclick="loginRequired();">
                        <strong><i class="bi bi-gear-wide-connected"></i> My Account</strong>
                    </a>
                    <br>
                </div>
            </div>
            </c:if>
            
            <c:choose>
            	<c:when test="${not empty loginUser}">
		            <div class="row g-1">
		                <div class="card-body">
		                    <a class="nav-link fs-3" href="logout.me">
		                        <strong><i class="bi bi-box-arrow-right"></i> Sign Out</strong>
		                    </a>
		                    <br>
		                </div>
		            </div>
            	</c:when>
				<c:otherwise>
					<div class="row g-1">
		                <div class="card-body">
		                    <a class="nav-link fs-3" data-bs-toggle="modal" href="#loginModal" role="button"
		                            aria-controls="loginModal">
		                        <strong><i class="bi bi-person-circle"></i> Sign In</strong>
		                    </a>
		                    <br>
		                </div>
		            </div>
				</c:otherwise>     
            </c:choose>
        </div>
    </div>
    
    <!-- Modal: Product Details -->
    <div class="modal fade" id="productDetailsModal" tabindex="-1" aria-labelledby="productDetailsModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-fullscreen">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="productDetailsModalLabel"><b>PRODUCT DETAILS</b></h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="refreshCartWishlist();"></button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="row row-cols-1 row-cols-lg-2 g-5">
                            <div class="col">
                                <div class="row">
                                    <a id="bigPicture" href="" target="_blank"><img class="img-fluid"
                                            src="" alt="bigPicture"></a>
                                </div>
                                <br><br>
                                <div class="owl-product owl-carousel owl-theme row">
                                </div>
                            </div>
                            <div class="col card-text">
                                <div class="row">
                                    <div class="card-text">
                                        <h2><b id="product-brand"></b></h2>
                                        <h3><b id="product-name"></b></h3>
                                        <h3 id="product-color"></h3>
                                        <small id="product-no"></small>
                                        <h5 id="product-review-numbers">0.00/5 | 0 REVIEWS</h5>
                                    </div>
                                </div>
                                <br>
                                <hr>
                                <br>
                                <div class="row">
                                    <div class="card-text">
                                        <h5><b>Description</b></h5>
                                        <div id="product-description" style="white-space:pre-wrap">
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="card-text">
                                        <h5><b>Colors</b></h5>
                                        <div class="owl-color owl-carousel owl-theme">
                                        	<img class='item colorPicture' src="" alt='owl-image' style='cursor:pointer;'>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <hr>
                                <br>
                                <div class="row">
                                    <div class="card-text">
                                        <h4><b id="product-price"></b></h4>
                                        <br>
                                        <div class="btn-group" role="group" aria-label="cart or wishlist">
                                            <c:if test="${not empty loginUser}">
	                                            <button id="addToCart" class="btn btn-lg btn-outline-danger"><i
	                                                    class="bi bi-bag"></i> Add to Cart</button>
	                                            
	                                            <button id="addToWishlist" class="btn btn-lg btn-outline-danger"><i class="bi bi-heart"></i> Add to
	                                                Wishlist</button>
                                            </c:if>
                                            <c:if test="${empty loginUser}">
	                                            <button class="btn btn-lg btn-outline-danger" style="cursor:pointer;" onclick="loginRequired();"><i
	                                                    class="bi bi-bag"></i> Add to Cart</button>
	                                            
	                                            <button class="btn btn-lg btn-outline-danger" style="cursor:pointer;" onclick="loginRequired();"><i class="bi bi-heart"></i> Add to
	                                                Wishlist</button>
                                            </c:if>
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
                                <h3><b>REVIEWS</b></h3>
                                <div class="container">
                                    <table class="table table-sm table-hover" id="reviewTable" style="cursor:pointer;">
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
                            <a id="review-pic" href="" target="_blank"><img class="img-fluid mx-auto d-block" src="" alt="reviewImg"></a>
                        </div>
                        <div class="col card-text">
                            <p class="card-text"><b>Writer: </b><small id="review-writer"></small></p>
                            <p class="card-text"><b>Date: </b><small id="review-date"></small></p>
                            <p class="card-text"><b>Rating: </b><small id="review-rating"></small></p>
                            <p class="card-text"><b>USER REVIEW:</b></p>
                            <p class="card-text" id="review-content" style="white-space:pre-wrap;"></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

<!-- Owl Carousel: JavaScript -->
<script src="${pageContext.request.contextPath}/resources/owlcarousel/owl.carousel.min.js"></script>
<!-- JavaScript for header -->
<script src="${pageContext.request.contextPath}/resources/js/header.js"></script>
<!-- JavaScript for cart -->
<script src="${pageContext.request.contextPath}/resources/js/cart.js"></script>
<!-- JavaScript for kakaoLogin -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/kakao.js"></script>

<c:if test="${not empty loginUser}">
	<script>
		refreshCartWishlist();
	</script>
</c:if>
<!-- Alert Script -->
<c:if test="${not empty alertMsg}">
    <script>
        window.alert("${alertMsg}");
    </script>
    <c:remove var="alertMsg" scope="session"/>
</c:if>

</html>