// JavaScript for Product Modal
function openProductModal(productNo) {
    const productDetailsModal = new bootstrap.Modal(document.getElementById('productDetailsModal'));
    productDetailsModal.show();
    productDetails(productNo);
};

// JavaScript for detailed product information 
function productDetails(productNo) {
    $.ajax({
        url: "product.pr",
        data: {
            productNo: productNo
        },
        success: data => {
            let productNumber = "PRODUCT_NO# " + data.product.productNo;
            let productReviewNumbers = data.product.rating + "/5 | " + data.product.count + " REVIEWS";
            let bigPictureHref = data.productPics[0].filePath + data.productPics[0].changeName;
            const won = /\B(?=(\d{3})+(?!\d))/g;
            const comma = ",";
            let productPrice = "PRICE: " + ( String(data.product.price).replace(won, comma)) + " 원";
            var smallPics = "";
            var colorPics = "";
            var reviewTable = "";
            if (data.productReviewList.length == 0) {
                reviewTable += "<tr><td class='text-center'><h3 class='text-muted'>등록된 리뷰가 없습니다.</h3></td></tr>";
            }
            if (data.productReviewList.length != 0) {
                reviewTable += "<thead><tr><th>No</th><th>User</th><th>Rating</th><th>See Review</th></tr></thead>";
                for (var i = 0; i < data.productReviewList.length; i++) {
                    reviewTable += "<tbody><tr><td>"+ data.productReviewList[i].reviewNo 
                    + "</td><td>" + data.productReviewList[i].memberNickname
                    + "</td><td>" + data.productReviewList[i].rating + " / 5"
                    + "</td><td><a href='#' onclick='openReviewModal(" + data.productReviewList[i].reviewNo + ");'>See Review</a></td></tr></tbody>";
                };
            }
            $("#product-brand").text(data.product.brand);
            $("#product-name").text(data.product.name);
            $("#product-color").text(data.product.color);
            $("#product-no").text(productNumber);
            $("#product-review-numbers").text(productReviewNumbers);
            $("#product-description").text(data.product.content);
            $("#product-price").text(productPrice);
            $("#bigPicture").attr('href', bigPictureHref);
            $("#bigPicture>img").attr('src', bigPictureHref);
            for (var i = 0; i < data.productPics.length; i++) {
                smallPics += "<img class='item smallPicture' src=" + data.productPics[i].filePath + data.productPics[i].changeName + " alt='owl-image' style='cursor:pointer;'>";
            };
            for (var i = 0; i < data.productColors.length; i++) {
                colorPics += "<img class='item colorPicture' src=" + data.productColors[i].filePath + data.productColors[i].changeName + " alt='owl-image' style='cursor:pointer;' onclick='productDetails(" + data.productColors[i].productNo + ");'>";
            }
            $("#reviewTable").html(reviewTable);
            $(".owl-product").html(smallPics);
            $(".owl-color").html(colorPics);
            $('.owl-carousel').trigger('destroy.owl.carousel');
            $('.owl-product').owlCarousel({
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
                    1000: {
                        items: 5
                    }
                }
            });
            $('.owl-color').owlCarousel({
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
                    1000: {
                        items: 5
                    }
                }
            });
            $(".smallPicture").click(function () {
                $("#bigPicture").attr('href', this.src);
                $("#bigPicture>img").attr('src', this.src);
            });
            $("#addToCart").attr('onclick', 'addToCart(' + productNo + ')');
            $("#addToWishlist").attr('onclick', 'addToWishlist(' + productNo + ')');
        },
        error: function () {
            console.log("통신 실패 ㅜㅜ");
        }
    });
};

// JavaScript for Review Modal
function openReviewModal(reviewNo) {
    const reviewModal = new bootstrap.Modal(document.getElementById('reviewModal'));
    reviewModal.show();
    reviewDetails(reviewNo);
};

// JavaScript for detailed review
function reviewDetails(reviewNo) {
    $.ajax({
        url: "reviewDetails.pr",
        data: {
            reviewNo: reviewNo
        },
        success: data => {
            var reviewPic = data.reviewAttachment.filePath + data.reviewAttachment.changeName;
            console.log(reviewPic);
            $("#review-pic").attr('href', reviewPic);
            $("#review-pic>img").attr('src', reviewPic);
            $("#review-writer").text(data.review.memberNickname);
            $("#review-date").text(data.review.createDate);
            $("#review-rating").text(data.review.rating + "/5");
            $("#review-content").text(data.review.content);
        },
        error: function() {
            console.log("통신 실패 ㅜㅜ");
        }
    });
}

// JavaScript for confirmation: Login required
function loginRequired() {
    window.alert("로그인 후 이용 가능합니다.");
};

// JavaScript for Cart
function showCart() {
    $.ajax({
        url: "showCart.or",
        success: function(result) {
            console.log(result);
            var won = /\B(?=(\d{3})+(?!\d))/g;
            var comma = ",";
            var cartArray = "";
            let totalPrice = 0;
            for (var i = 0; i < result.product.length; i++) {
                var price = (String(result.product[i].price).replace(won, comma));
                cartArray += "<div class='item'>" 
                        + "<div class='card shadow-sm' style='cursor:pointer;'>"
                        + "<div style='text-align:center;'>"
                        + "<img class='img fluid img-responsive card-img-top' src='" + result.product[i].filePath + result.product[i].changeName + "' alt='thumbnail>"
                        + "</div>"
                        + "<div class='card-body text-center'>"
                        + "<p class='card-text text-center'><b>" + price + " 원</b></p>"
                        + "<a href='#' class='card-link text-muted' onclick='openProductModal(" + result.product[i].productNo + ");'>View</a>"
                        + "<a href='#' class='card-link text-muted'>Remove</a>"
                        + "</div>"
                        + "</div>"
                        + "</div>";
                totalPrice += result.product[i].price;
            }
            $("#cartLength").text(result.product.length);
            $("#totalPrice").text(String(totalPrice).replace(won, comma));
            $(".owl-cart").html(cartArray);
            $('.owl-carousel').trigger('destroy.owl.carousel');
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
                    1000: {
                        items: 5
                    }
                }
            });
        },
        error: function() {
            console.log("통신 실패 ㅜㅜ");
        }
    })
};

// JavaScript for confirmation: Add to Cart, Add to Wishlist
function addToCart(productNo) {
    $.ajax({
        url: "checkCart.or",
        data: {
            productNo: productNo
        },
        success: function(result) {
            if (result == 0) {
                $.ajax({
                    url: "addToCart.or",
                    data: {
                        productNo: productNo
                    },
                    success: function() {
                        window.alert("선택하신 상품이 장바구니에 담겼습니다.");
                    },
                    error: function() {
                        console.log("장바구니 추가 실패");
                    }
                })
            };
            if (result != 0) {
                window.alert("이미 장바구니에 추가한 상품입니다.");
            };
        },
        error: function() {
            console.log("통신 실패 ㅜㅜ");
        }
    })
};



function addToWishlist(productNo) {
    console.log(productNo);
    window.alert("선택하신 상품이 위시리스트에 담겼습니다.");
};