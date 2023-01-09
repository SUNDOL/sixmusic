function mainview() {
    bestSellers();
    newArrivals();
};

function bestSellers() {
    $.ajax({
        url: "bestSellers.pr",
        success: function (result) {
            var bestSellerResult = "";
            for (var i = 0; i < 10; i++) {
                var price = (String(result[i].price).replace(won, comma));
                bestSellerResult += "<div class='item'>"
                    + "<div class='card shadow-sm' style='cursor:pointer;' onclick='openProductModal(" + result[i].productNo + ");'>"
                    + "<div>"
                    + "<img class='img-fluid img-responsive card-img-top' src='" + result[i].filePath + result[i].changeName + "' alt='thumbnail>"
                    + "</div>"
                    + "<div class='card'>"
                    + "<div class='card-body'>"
                    + "<h5 class='card-title'><b>" + result[i].brand + "</b></h5>"
                    + "<p class='card-text' style='white-space:nowrap;overflow:hidden;text-overflow:ellipsis;'>" + result[i].name + "</p>"
                    + "<small>" + result[i].rating + "/5 | " + result[i].count + " Reviews</small>"
                    + "<p class='card-text'><b>" + price + " 원</b></p>"
                    + "</div>"
                    + "</div>"
                    + "</div>"
                    + "</div>";
            }
            $(".owl-bestSellers").html(bestSellerResult);
            $(".owl-bestSellers").trigger('destroy.owl.carousel');
            $(".owl-bestSellers").owlCarousel({
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
        }
    })
}

function newArrivals() {
    $.ajax({
        url: "newArrivals.pr",
        success: function (result) {
            var newArrivalsResult = "";
            for (var i = 0; i < 10; i++) {
                var price = (String(result[i].price).replace(won, comma));
                newArrivalsResult += "<div class='item'>"
                    + "<div class='card shadow-sm' style='cursor:pointer;' onclick='openProductModal(" + result[i].productNo + ");'>"
                    + "<div>"
                    + "<img class='img-fluid img-responsive card-img-top' src='" + result[i].filePath + result[i].changeName + "' alt='thumbnail>"
                    + "</div>"
                    + "<div class='card'>"
                    + "<div class='card-body'>"
                    + "<h5 class='card-title'><b>" + result[i].brand + "</b></h5>"
                    + "<p class='card-text' style='white-space:nowrap;overflow:hidden;text-overflow:ellipsis;'>" + result[i].name + "</p>"
                    + "<small>" + result[i].rating + "/5 | " + result[i].count + " Reviews</small>"
                    + "<p class='card-text'><b>" + price + " 원</b></p>"
                    + "</div>"
                    + "</div>"
                    + "</div>"
                    + "</div>";
            }
            $(".owl-newArrivals").html(newArrivalsResult);
            $(".owl-newArrivals").trigger('destroy.owl.carousel');
            $(".owl-newArrivals").owlCarousel({
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
        }
    })
}
