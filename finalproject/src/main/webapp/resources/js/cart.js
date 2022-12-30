const won = /\B(?=(\d{3})+(?!\d))/g;
const comma = ",";

// JavaScript for running cart & wishlist at the same time
function refreshCartWishlist() {
    showCart();
    showWishlist();
}

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
                        refreshCartWishlist();
                    },
                    error: function() {
                        console.log("장바구니 추가 실패");
                    }
                })
            };
            if (result != 0) {
                window.alert("이미 장바구니에 추가한 상품입니다.");
                refreshCartWishlist();
            };
        },
        error: function() {
            console.log("통신 실패 ㅜㅜ");
        }
    });

};

function addToWishlist(productNo) {
    $.ajax({
        url:"addToWishlist.or",
        data:{productNo:productNo},
        success:result=>{
            if(result>0){
                alert("선택하신 상품이 위시리스트에 담겼습니다.");
                refreshCartWishlist();
            }else{
                alert("insert error!!");
            }
        },
        error:()=>{
            alert("addToWishlist error!!");
        }
    });
}

function checkWishlist(productNo) {
    $.ajax({
        url:"checkWishlist.or",
        data:{productNo:productNo},
        success:result=>{
            if(result>0){
                alert("이미 위시리스트에 존재합니다.");
            }else{
                addToWishlist(productNo);
            }
        },
        error:()=>{
            alert("checkWishlist error!!");
        }
    });
}

// JavaScript for Cart
function showCart() {
    $.ajax({
        url: "showCart.or",
        success: function (result) {
            var cartArray = "";
            let totalPrice = 0;
            if (result.product.length == 0) {
                cartArray += "<h3 class='text-muted'>Your cart is empty</h3>";
                $(".owl-cart").html(cartArray);
                $("#cartAlert").css("display", "none");
                $("#cartLength-min").css("display", "none");
                $("#confirmation").css("display", "none");
            }
            if (result.product.length != 0) {
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
                        + "<a href='#' class='card-link text-muted' onclick='cartRemove(" + result.product[i].cartNo + ");'>Remove</a>"
                        + "</div>"
                        + "</div>"
                        + "</div>";
                    totalPrice += result.product[i].price;
                };
                $("#totalPrice").text(String(totalPrice).replace(won, comma));
                $(".owl-cart").html(cartArray);
                $("#cartAlert").css("display", "block");
                $("#cartLength-min").css("display", "inline-block");
                $("#confirmation").css("display", "block");
                $('.owl-cart').trigger('destroy.owl.carousel');
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
            }
            $("#cartLength").html(result.product.length);
            $("#cartLength-min").html(result.product.length);
        },
        error: function () {
            console.log("통신 실패 ㅜㅜ");
        }
    });
}

function cartRemove(cartNo) {
    $.ajax({
        url: "removeCart.or",
        data: { cartNo: cartNo },
        success: result => {
            if (result > 0) {
                refreshCartWishlist();
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
            var wishArray = "";
            if (result.length == 0) {
                wishArray += "<h3 class='text-muted'>Your wishlist is empty</h3>";
            }
            if (result.length != 0) {

            }
            result.forEach(e => {
                wishArray += "<div class='item'>";
                wishArray += "<div class='card shadow-sm' style='cursor:pointer;'>";
                wishArray += "<div style='text-align:center;'>";
                wishArray += "<img class='img-fluid img-responsive card-img-top' src='" + e.filePath + e.changeName + "' alt='thumbnail'>";
                wishArray += "</div>";
                wishArray += "<div class='card-body'>";
                wishArray += "<a href='#' class='card-link text-muted' onclick='openProductModal(" + e.productNo + ");'>View</a>";
                wishArray += "<a href='#' class='card-link text-muted' onclick='wishlistRemove(" + e.productNo + ");'>Remove</a>";
                wishArray += "</div>"
                wishArray += "</div>"
                wishArray += "</div>";
            });
            $("#wishlistLength").html(result.length);
            $('.owl-wishlist').html(wishArray);
            $('.owl-wishlist').trigger('destroy.owl.carousel');
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

}

function wishlistRemove(productNo) {
    $.ajax({
        url: "removeWishlist.or",
        data: { productNo: productNo },
        success: result => {
            if (result > 0) {
                refreshCartWishlist();
            } else {
                alert("remove error!!")
            }
        },
        error: () => alert("error!!")
    });
}


