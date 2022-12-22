// JavaScript for Owl Carousel
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