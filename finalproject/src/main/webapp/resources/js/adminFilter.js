
function brandCraft(f){
    f.brandNo = $("select[name=brand]>option:selected").val();
    model(f);
}

function brand(f) {
    $.ajax({
        url: "brand.da",
        dataType: "json",
        success: list => {
            let str = "";
            list.forEach(el => {
                str += "<option value='"+el.brandNo+"'>"+el.name+"</option>";
            });
            $("select[name=brand]").html(str);
            
            brandCraft(f);
            
            $("select[name=brand]").change(() => {
                console.log($("select[name=brand]>option:selected").val());
                brandCraft(f);
            });


        }
    });
}

function modelCraft(f){
    f.modelNo = $("select[name=model]>option:selected").val();
    groupAdmin(f);
}

function model(f) {
    $.ajax({
        url: "model.da",
        data: {
            brandNo:f.brandNo,
        },
        dataType: "json",
        success: list => {
            let str = "";
            list.forEach(el => {
                str += "<option value='"+el.modelNo+"'>"+el.name+"</option>";
            });
            $("select[name=model]").html(str);

            modelCraft(f);

            $("select[name=model]").change(() => {
                modelCraft(f);
            });

        }
    });
}

function groupCraft(){
    let groupNo = 0;
    groupNo = $("select[name=groupNo]>option:selected").val();
    productAdmin(groupNo);
}

function groupAdmin(f){
    
    $.ajax({
        url: "groupAdmin.pr",
        data: {
            typeNo:f.typeNo,
            brandNo:f.brandNo,
            modelNo:f.modelNo
        },
        dataType: "json",
        success: list => {
            let str = "";
            list.forEach(el => {
                str += "<option value='"+el.groupNo+"'>"+el.name+"</option>";
            });
            $("select[name=groupNo]").html(str);

            if(f.level == 1 && $("#selectName").val() != "b"){
                $("#selectName").change(() => {
                    if ($("#selectName").val() == "b") {
                        groupCraft();
                    }
                });
            }else{
                groupCraft();
            }
            $("select[name=groupNo]").change(() => {
                groupCraft();
            });
        }
    });
}


function productCraft(){
    let productNo = 0;
    productNo = $("select[name=productNo]>option:selected").val();
    detail(productNo);
}

function productAdmin(groupNo){
    $.ajax({
        url: "productAdmin.pr",
        data: {
            groupNo:groupNo
        },
        dataType: "json",
        success: list => {
            let str = "";
            list.forEach(el => {
                str += "<option value='"+el.productNo+"'>"+el.color+"</option>";
            });
            $("select[name=productNo]").html(str);

            productCraft();

            $("select[name=productNo]").change(() => {
                productCraft();
            });
        }
    });
}

function detail(productNo){
    $.ajax({
        url: "detailAdmin.pr",
        data: {
            productNo:productNo
        },
        dataType: "json",
        success: result => {
            $("input[name=price]").val(result.price);
            $("input[name=quantity]").val(result.quantity);
            $("textarea[name=content]").html(result.content);
        }
    });
}