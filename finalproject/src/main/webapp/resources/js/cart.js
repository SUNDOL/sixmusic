const won = /\B(?=(\d{3})+(?!\d))/g;
const comma = ",";
// JavaScript for Cart
function showCart() {
    $.ajax({
        url: "showCart.or",
        success: function (result) {
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
                    + "<a href='#' class='card-link text-muted' onClick='cartRemove(" + result.product[i].cartNo + ")');' >Remove</a>"
                    + "</div>"
                    + "</div>"
                    + "</div>";
                totalPrice += result.product[i].price;
            }
            $("#cartLength").text(result.product.length);
            $("#cartLength-min").text(result.product.length);

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
        error: function () {
            console.log("통신 실패 ㅜㅜ");
        }
    });
}

function cartRemove(cartNo) {
    console.log(cartNo);
    $.ajax({
        url: "removeCart.or",
        data: { cartNo: cartNo },
        success: result => {
            if (result > 0) {
                showCart();
            } else {
                alert("remove error!!")
            }
        },
        error: () => alert("error!!")
    });
}

function showWishlist() {
    $.ajax({
        url: "showWishlist.or",
        success: function (result) {
            console.log(result);
            var str = "";
            let totalPrice = 0;
            result.forEach(e => {
                console.log(e);
                str += "<div class='item'>";
                str += "<div class='card shadow-sm' style='cursor:pointer;'>";
                str += "<div style='text-align:center;'>";
                str += "<img class='img-fluid img-responsive card-img-top' src='"+e.filePath+e.changeName+"' alt='thumbnail'>";                
                str += "</div>";         
                str += "<div class='card-body'>";
                str += "<a href='#' class='card-link text-muted' onclick='openProductModal(" + e.productNo + ");'>View</a>";
                str += "<a href='#' class='card-link text-muted' onClick='WishlistRemove(" + e.productNo + ")>Remove</a>";
                str += "</div>";            
            });
            
            $("").text(result.length);
            $('.owl-carousel').trigger('destroy.owl.carousel');
            $('.owl-wishlist').owlCarousel({
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
        error: function () {
            console.log("통신 실패 ㅜㅜ");
        }
    });

    function WishlistRemove(productNo){

    }
}



