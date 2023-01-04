function myRecentOrder() {
    $.ajax({
        url: "viewLastOrder.me",
        success: function (result) {
            var recentOrderBody = "";
            for (var j = 0; j < result.poList.length; j++) {
                if (result.poList[j].refOrderNo == result.toList[0].orderNo) {
                    recentOrderBody += "<tr>"
                        + "<td><img class='img-thumbnail' alt='thumbnail' src='" + result.poList[j].filePath + result.poList[j].changeName + "'></td>"
                        + "<td onclick='openProductModal(" + result.poList[j].productNo + ")'><div class='fs-5'><span>" + result.poList[j].brand + "</span><span> " + result.poList[j].name + "</span></div></td>"
                        + "<td><div>" + result.poList[j].color + "</div><div><strong>" + String(result.poList[j].price).replace(won, comma) + " 원</strong></div></td>"
                        + "<td>" + result.toList[0].orderDate + "</td>"
                        if (result.poList[j].count == 0) {
                            recentOrderBody += "<td><div><a class='link-secondary' href='#' onclick='writeReview(" + result.poList[j].productNo + ")'>Write</a></div></td>"
                        } else {
                            recentOrderBody += "<td><div><a class='link-secondary' href='#' onclick='showReview(" + result.poList[j].productNo + ")'>View</a></div>"
                                            + "<div><a class='link-secondary' href='#' onclick='modifyReview(" + result.poList[j].productNo + ")'>Modify</a></div>"
                                            + "<div><a class='link-secondary' href='#' onclick='deleteReview(" + result.poList[j].productNo + ")'>Delete</a></div></td>"
                        }
                        recentOrderBody += "</tr>";
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
            var orderHistoryBody = "";
            for (var j = 0; j < result.poList.length; j++) {
                for (var i = 0; i < result.toList.length; i++) {
                    if (result.poList[j].refOrderNo == result.toList[i].orderNo) {
                        orderHistoryBody += "<tr>"
                            + "<td><img class='img-thumbnail' alt='thumbnail' src='" + result.poList[j].filePath + result.poList[j].changeName + "'></td>"
                            + "<td onclick='openProductModal(" + result.poList[j].productNo + ")'><div class='fs-5'><span>" + result.poList[j].brand + "</span><span> " + result.poList[j].name + "</span></div></td>"
                            + "<td><div>" + result.poList[j].color + "</div><div><strong>" + String(result.poList[j].price).replace(won, comma) + " 원</strong></div></td>"
                            + "<td>" + result.toList[i].orderDate + "</td>"
                            if (result.poList[j].count == 0) {
                                orderHistoryBody += "<td><div><a class='link-secondary' href='#' onclick='writeReview(" + result.poList[j].productNo + ")'>Write</a></div></td>"
                            } else {
                                orderHistoryBody += "<td><div><a class='link-secondary' href='#' onclick='showReview(" + result.poList[j].productNo + ")'>View</a></div>"
                                                + "<div><a class='link-secondary' href='#' onclick='modifyReview(" + result.poList[j].productNo + ")'>Modify</a></div>"
                                                + "<div><a class='link-secondary' href='#' onclick='deleteReview(" + result.poList[j].productNo + ")'>Delete</a></div></td>"
                            }
                            orderHistoryBody += "</tr>";
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

function writeReview(productNo) {
    const writeReview = new bootstrap.Modal(document.getElementById('writeReview'));
    $("#reviewProductNo").val(productNo);
    writeReview.show(productNo);
};

function showReview(productNo) {
    const showReview = new bootstrap.Modal(document.getElementById('reviewModal'));
    $.ajax({
        url: "showReview.me",
        data: {
            memberNo: $("#hidden-memberNo").val(),
            productNo: productNo
        },
        success: data => {
            var reviewPic = data.reviewAttachment.filePath + data.reviewAttachment.changeName;
            $("#review-pic").attr('href', reviewPic);
            $("#review-pic>img").attr('src', reviewPic);
            $("#review-writer").text(data.review.memberNickname);
            $("#review-date").text(data.review.createDate);
            $("#review-rating").text(data.review.rating + "/5");
            $("#review-content").text(data.review.content);
        }
    })
    showReview.show(productNo);
}

function modifyReview(productNo) {
    const modifyReview = new bootstrap.Modal(document.getElementById('modifyReview'));
    $.ajax({
        url: "showReview.me",
        data: {
            memberNo: $("#hidden-memberNo").val(),
            productNo: productNo
        },
        success: data => {
            console.log(data);
            $("#showYourRating2").html(data.review.rating);
            $("#yourRating2").val(data.review.rating);
            $("#yourReview2").val(data.review.content);
            $("#reviewNo2").val(data.reviewAttachment.reviewNo);
            $("#reviewFilePath2").val(data.reviewAttachment.filePath);
            $("#reviewChangeName2").val(data.reviewAttachment.changeName);
            $("#productNo2").val(data.review.productNo);
            $("#checkFile").val(data.reviewAttachment.originName);
            $("#upfile2Div-1").show();
            $("#upfile2Div-2").hide();
            $("#upfile2").attr("required", false);
        }
    })
    modifyReview.show(productNo);
};

function modifyPic() {
    $("#upfile2Div-1").hide();
    $("#upfile2Div-2").show();
    $("#upfile2").attr("required", true);
};

$("#yourRating").on("change", function() {
    $("#showYourRating").html($("#yourRating").val());
});

$("#yourRating2").on("change", function() {
    $("#showYourRating2").html($("#yourRating2").val());
});