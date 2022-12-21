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
                    <span class="position-absolute top-0 start-100 translate-middle p-2 bg-danger rounded-circle">
                        <span class="visually-hidden">New alerts</span>
                    </span>
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
                            <li><a class="dropdown-item" href="#">Shop All Electric Guitars</a></li>
                            <li>
                                <hr class="dropdown-divider bg-light">
                            </li>
                            <li><a class="dropdown-item" href="#">Solid-Body</a></li>
                            <li><a class="dropdown-item" href="#">Hollow & Semi-Hollow Body</a></li>

                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            ACOUSTIC GUITARS
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark">
                            <li><a class="dropdown-item" href="#">Shop All Acoustic Guitars</a></li>
                            <li>
                                <hr class="dropdown-divider bg-light">
                            </li>
                            <li><a class="dropdown-item" href="#">6-String</a></li>
                            <li><a class="dropdown-item" href="#">12-String</a></li>
                            <li><a class="dropdown-item" href="#">Acoustic-Electric</a></li>
                            <li><a class="dropdown-item" href="#">Classical & Nylon</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            BASSES
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark">
                            <li><a class="dropdown-item" href="#">Shop All Basses</a></li>
                            <li>
                                <hr class="dropdown-divider bg-light">
                            </li>
                            <li><a class="dropdown-item" href="#">Electric: 4-String</a></li>
                            <li><a class="dropdown-item" href="#">Electric: 5+ String</a></li>
                            <li><a class="dropdown-item" href="#">Acoustic</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            BRANDS
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark">
                            <li><a class="dropdown-item" href="#">Fender</a></li>
                            <li><a class="dropdown-item" href="#">Gibson</a></li>
                            <li><a class="dropdown-item" href="#">Gretsch</a></li>
                            <li><a class="dropdown-item" href="#">Rickenbacker</a></li>
                            <li><a class="dropdown-item" href="#">Martin</a></li>
                            <li><a class="dropdown-item" href="#">Taylor</a></li>
                            <li><a class="dropdown-item" href="#">MusicMan</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">NEW ARRIVALS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">TOP SELLERS</a>
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
                    <c:if test="${not empty loginUser}">
	                    <li class="nav-item dropdown">
	                    	<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
	                        aria-expanded="false">
	                        ${loginUser.memberNickname}님
	                        </a>
	                        	<ul class="dropdown-menu dropdown-menu-dark">
	                            	<li><a class="dropdown-item" href="#">My Page</a></li>
	                            	<li><a class="dropdown-item" href="member/logout.me">Sign Out</a></li>
	                        	</ul>
	                    </li>
                    </c:if>
                    <li>
                        <a class="nav-link" data-bs-toggle="offcanvas" href="#offcanvasCart" role="button"
                            aria-controls="offcanvasCart">
                            CART
                            <span class="badge text-bg-danger rounded-circle">0</span>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" data-bs-toggle="offcanvas" href="#offcanvasSearch" role="button"
                            aria-controls="offcanvasSearch">
                            SEARCH
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
                    <form action="member/login.me" method="post">
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
                        <a href="#"><img src="${pageContext.request.contextPath}/resources/kakaologinbuttonimg/kakao_login_medium_wide.png" alt="kakaoLogin"></a>
                    </div>
                </div>
                <div class="modal-footer">
                    <a href="#" style="color:#000; text-decoration:none;">Forgot ID?</a>&nbsp;|&nbsp;
                    <a href="#" style="color:#000; text-decoration:none;">Forgot Password?</a>&nbsp;|&nbsp;
                    <a href="member/signUp.me" style="color:#000; text-decoration:none;">Sign Up</a>
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
            <div class="container">
                <div class="row g-1">
                    <strong class="fs-3"><i class="bi bi-bag"></i> My Cart (0)</strong>
                    <div class="card-body text-center">
                        <br><br>
                        
                            <!-- <h3 class="text-muted">Your cart is empty</h3> -->
                            <div class="owl-cart owl-carousel owl-theme">
                                
                                <div class="item">
                                    <div class="card shadow-sm" style="cursor:pointer;">
                                        <div style="text-align:center;">
                                            <img class="img-fluid img-responsive card-img-top" src="pics/1-1.jpg"
                                                alt="thumbnail">
                                        </div>
                                        <div class="card-body">
                                            <p class="card-text"><b>2,500,000 원</b></p>
                                            <a href="#" class="card-link text-muted">View</a>
                                            <a href="#" class="card-link text-muted">Remove</a>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        <br>
                        <div class="card-body">
                            <div class="card-text fs-5 text-end"><strong>TOTAL: 12,500,000 원</strong></div>
                            <div class="card-text text-end"><a href="#" class="text-muted">Confirm your
                                    order</a></div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
            <div class="row g-1">
                <div class="card-body">
                    <a class="nav-link fs-3" href="#wishlistCollapse" data-bs-toggle="collapse" aria-expanded="false"
                        aria-controls="wishlistCollapse">
                        <strong><i class="bi bi-heart"></i> My Wishlist (0)</strong>
                    </a>
                    <br>
                    <div class="collapse" id="wishlistCollapse">
                        <div class="card-body text-center">
                            
                            <!-- <h3 class="text-muted">Your cart is empty</h3> -->
                            <div class="owl-cart owl-carousel owl-theme">
                                
                                <div class="item">
                                    <div class="card shadow-sm" style="cursor:pointer;">
                                        <div style="text-align:center;">
                                            <img class="img-fluid img-responsive card-img-top" src="pics/2-1.webp"
                                                alt="thumbnail">
                                        </div>
                                        <div class="card-body">
                                            <a href="#" class="card-link text-muted">View</a>
                                            <a href="#" class="card-link text-muted">Remove</a>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            <br>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row g-1">
                <div class="card-body">
                    <a class="nav-link fs-3" href="#">
                        <strong><i class="bi bi-archive"></i> My Order History</strong>
                    </a>
                    <br>
                </div>
            </div>
            <div class="row g-1">
                <div class="card-body">
                    <a class="nav-link fs-3" href="#">
                        <strong><i class="bi bi-gear-wide-connected"></i> My Account</strong>
                    </a>
                    <br>
                </div>
            </div>
            
            <c:choose>
            
            	<c:when test="${not empty loginUser}">
		            <div class="row g-1">
		                <div class="card-body">
		                    <a class="nav-link fs-3" href="member/logout.me">
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

    <!-- Offcanvas: Search -->
    <div class="offcanvas offcanvas-top container" data-bs-scroll="true" tabindex="-1" id="offcanvasSearch"
        aria-labelledby="offcanvasSearchLabel">
        <div class="offcanvas-header">
            <h2 class="offcanvas-title" id="offcanvasSearchLabel"><b>SEARCH</b></h2>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <form action="#" method="GET">
                <div class="input-group input-group-lg">
                    <input class="form-control form-control-lg" name="searchFormInput" type="text"
                        placeholder="Find your sound" aria-label="form-control-lg example">
                    <button class="btn btn-outline-dark" type="button" id="searchFormButton">SEARCH</button>
                </div>
            </form>
        </div>
    </div>

</body>
<!-- Owl Carousel: JavaScript -->
<script src="${pageContext.request.contextPath}/resources/owlcarousel/owl.carousel.min.js"></script>
<!-- JavaScript for Owl Carousel -->
<script>
    $(document).ready(function () {
        $(".owl-carousel").owlCarousel();
    });

    $('.owl-carousel').each(function () {
        $('.owl-product').owlCarousel({
            loop: false,
            margin: 15,
            nav: false,
            responsive: {
                0: {
                    items: 3
                },
                1000: {
                    items: 5
                }
            }
        });

        $('.owl-cart').owlCarousel({
            loop: false,
            margin: 15,
            nav: false,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 3
                },
                1200: {
                    items: 5
                }
            }
        });
    });
    
</script>
    <!-- alert script -->
    <c:if test="${not empty alertMsg}">
    	<script>
    		window.alert("${alertMsg}");
    	</script>
    	<c:remove var="alertMsg" scope="session"/>
    </c:if>

</html>