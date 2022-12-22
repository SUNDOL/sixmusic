// JavaScript for Modal: Product Details
$(document).ready(function () {
    $(".owl-carousel").owlCarousel();
});

function openProductModal(productNo) {
    const productDetailsModal = new bootstrap.Modal(document.getElementById('productDetailsModal'));
    productDetailsModal.show();
}

$(function () {
    $(".smallPicture").click(function () {
        $("#bigPicture").attr('href', this.src);
        $("#bigPicture>img").attr('src', this.src);
    });
});

// JavaScript for Owl Carousel
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

// JavaScript for Review: Modal
function openReviewModal(reviewNo) {
    const reviewModal = new bootstrap.Modal(document.getElementById('reviewModal'));
    reviewModal.show();
};

// JavaScript for confirmation: Add to Cart, Add to Wishlist
function addedToCart() {
    window.alert("선택하신 상품이 장바구니에 담겼습니다.");
};

function addedToWishlist() {
    window.alert("선택하신 상품이 위시리스트에 담겼습니다.");
};