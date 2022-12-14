
function filter(f) {
    $.ajax({
        url: "filter.da",
        data: {
            typeNo: f.typeNo,
            brandNo: f.brandNo,
            modelNo: f.modelNo,
            priceNo: f.priceNo
        },
        dataType: "json",
        success: result => {
            search(f);
            brand(result.brand);
            model(result.model);
            price(result.price);
            $("input[name=brandNo]").on("change",() => {
                f.brandNo = $("input[name=brandNo]:checked").val();
                filter(f);
            });
            $("input[name=modelNo]").on("change",() => {
                let list = $("input[name=modelNo]:checked").get();
                f.modelNo = [];
                list.forEach(e => f.modelNo.push($(e).val()));
                filter(f);
            });
            $("input[name=priceNo]").on("change",() => {
                let list = $("input[name=priceNo]:checked").get();
                f.priceNo = [];
                list.forEach(e => f.priceNo.push($(e).val()));
                filter(f);
            });
            $("#sortBy").on("change",() => {
                f.sort = $("#sortBy").val();
                search(f);
            });
            
            $("#boardLimit").on("change",() => {
                f.boardLimit = $("#boardLimit").val();
                search(f);
            });
            check(f);
        },
        error: () => {
            console.log("error!!");
        }
    });
}

function brand(list) {
    let str = "";
    list.forEach(el => {
        str += "<div class='form-check'>";
        str += "<input class='form-check-input' type='radio' id='brand-" + el.brandNo + "' name='brandNo' value='" + el.brandNo + "'>";
        str += "<label class='form-check-label' for='brand-" + el.brandNo + "'>" + el.name + "(" + el.quantity + ")</label>";
        str += "</div>";
    });
    $("#brand-area").html(str);
}
function model(list) {
    let str = "";
    list.forEach(el => {
        str += "<div class='form-check'>";
        str += "<input class='form-check-input' type='checkbox' id='model-" + el.modelNo + "' name='modelNo' value='" + el.modelNo + "'>";
        str += "<label class='form-check-label' for='model-" + el.modelNo + "'>" + el.name + "(" + el.quantity + ")</label>";
        str += "</div>";
    });
    $("#model-area").html(str);
}
function price(list) {
    let str = "";
    list.forEach((el) => {
        str += "<div class='form-check'>";
        str += "<input class='form-check-input' type='checkbox' name='priceNo' id='price-" + el.priceNo + "' value='" + el.priceNo + "'>";
        str += "<label class='form-check-label' for='price-" + el.name + "'>"
        const won = /\B(?=(\d{3})+(?!\d))/g;
        const comma = ",";
        let min = String(el.min).replace(won, comma);
        let max = String(el.max).replace(won, comma);
        if (el.priceNo == 1) {
            str += max + '??? ??????' + "(" + el.quantity + ")";
        } else {
            str += min + "??? - " + max + '???' + "(" + el.quantity + ")";
        }
        str += "</label>";
        str += "</div>";
    });
    $("#price-area").html(str);
}

function check(f) {
    $("input[id=brand-" + f.brandNo + "]").attr("checked", true);
    if (f.modelNo) f.modelNo.forEach(e => $("input[id=model-" + e + "]").attr("checked", true));
    if (f.priceNo) f.priceNo.forEach(e => $("input[id=price-" + e + "]").attr("checked", true));
}

function search(f) {
    if(typeof f.currentPage === 'undefined'){
        f.currentPage = 1;
    }
    $.ajax({
        url: "select.pr",
        data: {
            typeNo: f.typeNo,
            brandNo: f.brandNo,
            modelNo: f.modelNo,
            priceNo: f.priceNo,
            sort: f.sort,
            boardLimit: f.boardLimit,
            currentPage: f.currentPage
        },
        dataType: "json",
        success: result => {
            productList(result.p);
            pageInfo(f, result.pi);
        },
        error: () => {
            console.log("error!!");
        }
    });
}

function productList(list) {
    let str = "";
    if (list != null && list.length > 0) {
        const won = /\B(?=(\d{3})+(?!\d))/g;
        const comma = ",";
        let price = "";
        str += "<div class='row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5 g-1'>";
        list.forEach(e => {
            price = String(e.price).replace(won, comma)
            str += "<div class='col'>";
            str += "<div class='card shadow-sm' style='cursor:pointer;' onclick='openProductModal(" + e.productNo + ");'>";
            str += "<div style='text-align:center;'>";
            str += "<img class='img-fluid img-responsive card-img-top productListImg' src='" + e.filePath + e.changeName + "' alt='" + e.changeName + "'>";
            str += "</div>";
            str += "<div class='card-body'>";
            str += "<h5><b>" + e.brand + "</b></h5>";
            str += "<p class='card-text' style='white-space:nowrap;overflow:hidden;text-overflow:ellipsis;'>" + e.name + "</p>";
            str += "<small>" + e.rating + "/5 | " + e.count + " Reviews</small>";
            str += "<p class='card-text'><b>" + price + " ???</b></p>";
            str += "</div>";
            str += "</div>";
            str += "</div>";

        });
        str += "</div>";
    } else {
        str += "<div class='text-center'>";
        str += "<h3 class='text-muted'>????????? ????????? ????????????</h3>"
        str += "</div>"
    }
    $("#productList-area").html(str);
}

function pageInfo(f, pi) {
    let copyf = {
        typeNo: f.typeNo,
        brandNo: f.brandNo,
        modelNo: f.modelNo,
        priceNo: f.priceNo,
        sort: f.sort,
        boardLimit: f.boardLimit,
        currentPage: f.currentPage
    };
    
    copyf.currentPage = pi.startPage - 1;
    let str = "<li class='page-item'><a class='page-link' aria-label='Previous' onclick='filter(" + JSON.stringify(copyf) + ");'><span aria-hidden='true'>&laquo;</span></a></li>";

    if (pi != null) {
        for (let i = pi.startPage; i < pi.endPage + 1; i++) {
            copyf.currentPage = i;
            str += "<li class='page-item'><a class='page-link' onclick='filter(" + JSON.stringify(copyf) + ");'>" + i + "</a></li>";
        }
    }

    copyf.currentPage =  pi.endPage + 1;
    str += "<li class='page-item'><a class='page-link' aria-label='Previous' value='1'><span aria-hidden='true'";
    if (pi.endPage != pi.maxPage) {
        str += "onclick='filter(" + JSON.stringify(copyf) + ");'";
    }
    str += ">&raquo;</span></a></li>";
    
    $("#pageInfo-area").html(str);
}

