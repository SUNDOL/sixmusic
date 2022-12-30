var customerPoints = $("#confirm-points-hidden").val();

function showConfirmationInfo() {
    $.ajax({
        url: "showConfirmationInfo.or",
        success: function (aa) {
            console.log(aa);
            var pointsUsed = 0;
            var totalPrice = 0;
            var confirmArray = "";
            if (aa.product.length == 0) {
                confirmArray += "<tr><td colspan='4'>Your Cart is Empty</td></tr>"
            };
            if (aa.product.length != 0) {
                for (var i = 0; i < aa.product.length; i++) {
                    confirmArray += "<tr>"
                        + "<td>"
                        + "<img class='img-thumbnail' src='" + aa.product[i].filePath + aa.product[i].changeName + "' alt='thumbnail'>"
                        + "</td>"
                        + "<td colspan='2'>"
                        + "<div class='fs-5'><span>" + aa.product[i].brand + "</span><span> " + aa.product[i].name + "</span></div>"
                        + "<div><small>" + aa.product[i].color + "</small></div>"
                        + "<div><strong>" + String(aa.product[i].price).replace(won, comma) + " 원</strong></div>"
                        + "</td>"
                        + "<td>"
                        + "<a href='#' style='color:#bbb; text-decoration:none;' onclick='confirmRemove(" + aa.product[i].productNo + ")'>Delete</a>"
                        + "</td>"
                        + "</tr>";
                    totalPrice += aa.product[i].price;
                };
            };
            //$("#confirm-points").html(String(customerPoints).replace(won, comma));
            $("#confirm-showTotalPrice").html(String(totalPrice).replace(won, comma));
            $("#confirm-info").html(confirmArray);
            $("#confirm-point").val(pointsUsed);
            $("#confirm-point-range").on("change", function () {
                pointsUsed = $(this).val();
                $("#confirm-pointsUsed").html(String($(this).val()).replace(won, comma));
                $("#confirm-point").val(pointsUsed);
                $("#confirm-showTotalPrice").html(String(totalPrice - $(this).val()).replace(won, comma));
            });
        },
        error: function () {
            console.log("통신 실패 ㅜㅜ");
        }
    });
}

function confirmRemove(cartNo) {
    $.ajax({
        url: "removeCart.or",
        data: { cartNo: cartNo },
        success: result => {
            if (result > 0) {
                showConfirmationInfo();
                refreshCartWishlist();
                $("#confirm-point-range").val() == 0;
            } else {
                alert("remove error!!")
            }
        },
        error: () => alert("error!!")
    });
}