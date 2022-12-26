// JavaScript for Product Modal
function openProductModal(productNo) {
    const productDetailsModal = new bootstrap.Modal(document.getElementById('productDetailsModal'));
    productDetailsModal.show();
    productDetails(productNo);
}

// JavaScript for detailed product information 
function productDetails(productNo) {
    $.ajax({
        url: "product.pr",
        data: {
            productNo: productNo
        },
        success: data => {
            console.log(data);
            var productNo = "PRODUCT_NO# " + data.product.productNo;
            var productReviewNumbers = data.product.rating + "/5 | " + data.product.count + " REVIEWS";
            var bigPictureHref = data.productPics[0].filePath + data.productPics[0].changeName;
            var productPrice = "PRICE: " + data.product.price + "원";
            var smallPics = "";
            var colorPics = "";
            $("#product-brand").text(data.product.brand);
            $("#product-name").text(data.product.name);
            $("#product-color").text(data.product.color);
            $("#product-no").text(productNo);
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
            $(".owl-product").html(smallPics);
            $(".owl-color").html(colorPics);
            $('.owl-carousel').trigger('destroy.owl.carousel');
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
            $('.owl-color').owlCarousel({
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
            $(".smallPicture").click(function () {
                $("#bigPicture").attr('href', this.src);
                $("#bigPicture>img").attr('src', this.src);
            });
        },
        error: function () {
            console.log("통신 실패 ㅗㅗ");
        }
    });
}

// JavaScript for Review Modal
function openReviewModal() {
    console.log();
    const reviewModal = new bootstrap.Modal(document.getElementById('reviewModal'));
    reviewModal.show();
};

// JavaScript for confirmation: Login required
function loginRequired() {
    window.alert("로그인 후 이용 가능합니다.");
};

// JavaScript for confirmation: Add to Cart, Add to Wishlist
function addedToCart() {
    window.alert("선택하신 상품이 장바구니에 담겼습니다.");
};

function addedToWishlist() {
    window.alert("선택하신 상품이 위시리스트에 담겼습니다.");
};