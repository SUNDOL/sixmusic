function showConfirmationInfo() {
    $.ajax({
        url: "showConfirmationInfo.or",
        success: function (aa) {
            console.log(aa);
            var confirmArray = "";
            var totalPrice = 0;
            if (aa.product.length == 0) {
                confirmArray += "<tr><td colspan='4'>Your Cart is Empty</td></tr>"
            }
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
            }
            $("#confirm-info").html(confirmArray);
            $("#confirm-showTotalPrice").html(String(totalPrice).replace(won, comma));
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
            } else {
                alert("remove error!!")
            }
        },
        error: () => alert("error!!")
    });
}

/*
<tr>
    <td>
        <img class="img-thumbnail" src="pics/1-1.jpg" alt="thumbnail">
    </td>
    <td colspan="2">
        <div class="fs-5"><span>Fender</span><span> American Standard II Stratocaster</span></div>
        <div><small>3-Tone Sunburst</small></div>
        <div><strong>2,500,000 원</strong></div>
    </td>
    <td>
        <a href="#" style="color:#bbb; text-decoration:none;">Delete</a>
    </td>
</tr>
*/