function myRecentOrder() {
    $.ajax({
        url: "viewLastOrder.me",
        success: function (result) {
            var recentOrderBody = "";
            for (var j = 0; j < result.poList.length; j++) {
                if (result.poList[j].refOrderNo == result.toList[0].orderNo) {
                    recentOrderBody += "<tr>"
                        + "<td><img class='img-thumbnail' alt='thumbnail' src='" + result.poList[j].filePath + result.poList[j].changeName + "'></td>"
                        + "<td><div class='fs-5'><span>" + result.poList[j].brand + "</span><span> " + result.poList[j].name + "</span></div></td>"
                        + "<td><div>" + result.poList[j].color + "</div><div><strong>" + String(result.poList[j].price).replace(won, comma) + " 원</strong></div></td>"
                        + "<td>" + result.toList[0].orderDate + "</td>"
                        + "<td><a class='link-secondary' href='#' onclick='openProductModal(" + result.poList[j].productNo + ")'>View Item</a></td>"
                        + "<td><a class='link-secondary' href='#' onclick='writeReview(" + result.poList[j].productNo + ")'>Write Review</a></td>"
                        + "</tr>";
                }
            }
            $("#recentOrderBody").html(recentOrderBody);
        },
        error: function () {
            console.log("오류 발생");
        }
    })
};

function myOrderHistory(currentPage) {
    $.ajax({
        url: "viewOrder.me",
        data:{currentPage:currentPage},
        success: function (result) {
            console.log(result);
            var orderHistoryBody = "";
            for (var j = 0; j < result.poList.length; j++) {
                for (var i = 0; i < result.toList.length; i++) {
                    if (result.poList[j].refOrderNo == result.toList[i].orderNo) {
                        orderHistoryBody += "<tr>"
                            + "<td><img class='img-thumbnail' alt='thumbnail' src='" + result.poList[j].filePath + result.poList[j].changeName + "'></td>"
                            + "<td><div class='fs-5'><span>" + result.poList[j].brand + "</span><span> " + result.poList[j].name + "</span></div></td>"
                            + "<td><div>" + result.poList[j].color + "</div><div><strong>" + String(result.poList[j].price).replace(won, comma) + " 원</strong></div></td>"
                            + "<td>" + result.toList[i].orderDate + "</td>"
                            + "<td><a class='link-secondary' href='#' onclick='openProductModal(" + result.poList[j].productNo + ")'>View Item</a></td>"
                            + "<td><a class='link-secondary' href='#' onclick='writeReview(" + result.poList[j].productNo + ")'>Write Review</a></td>"
                            + "</tr>";
                    }
                }
            }
            $("#orderHistoryBody").html(orderHistoryBody);
            pagination(result.pi);
        }
    })
}

function pagination(pi) {
    let currentPage = pi.startPage - 1;
    let str = "<li class='page-item'><a class='page-link' aria-label='Previous' onclick='myOrderHistory(" + currentPage + ");'><span aria-hidden='true'>&laquo;</span></a></li>";

    if (pi != null) {
        for (let i = pi.startPage; i < pi.endPage + 1; i++) {
            currentPage = i;
            str += "<li class='page-item'><a class='page-link' onclick='myOrderHistory(" + i + ");'>" + i + "</a></li>";
        }
    }

    currentPage = pi.endPage + 1;
    str += "<li class='page-item'><a class='page-link' aria-label='Previous' value='1'><span aria-hidden='true'";
    if (pi.endPage != pi.maxPage) {
        str += "onclick='myOrderHistory(" + currentPage + ");'";
    }
    str += ">&raquo;</span></a></li>";

    $("#orderHistoryFoot").html(str);

}