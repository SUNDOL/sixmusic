function categoryCraft(f){
    f.categoryNo = $(f.id + "select[name=category]>option:selected").val();
    type(f);
}


function category(f){
    categoryCraft(f);
    $(f.id + "select[name=category]").off('change').on('change',()=>{
        categoryCraft(f);
    });

}

$("#addNewProducts").on("show.bs.modal",()=>{
    let f = {level : 1, id : "#addNewProducts "};
    category(f)
});

$("#modifyProductInfo").on("show.bs.modal",()=>{
    let f = {level : 2, id : "#modifyProductInfo "};
    category(f);
});

$("#deleteProducts").on("show.bs.modal",()=>{
    let f = {level : 3, id : "#deleteProducts "};
    category(f);
});

function typeCraft(f){
    f.typeNo = $(f.id + "select[name=type]>option:selected").val();
    brand(f);
}

function type(f){
    $.ajax({
        url: "type.da",
        dataType: "json",
        data:{categoryNo : f.categoryNo},
        success: list => {
            let str = "";
            list.forEach(el => {
                str += "<option value='"+el.typeNo+"'>"+el.name+"</option>";
            });
            $(f.id + "select[name=type]").html(str);
        }
    });
        
    typeCraft(f);
            
    $(f.id + "select[name=type]").off('change').on('change',() => {
        typeCraft(f);
    });
}



function brand(f) {
    $.ajax({
        url: "brand.da",
        dataType: "json",
        success: list => {
            let str = "";
            if(list.length > 0){
                list.forEach(el => {
                    str += "<option value='"+el.brandNo+"'>"+el.name+"</option>";
                });
            }
            $(f.id + "select[name=brand]").html(str);
            
            f.brandNo = $(f.id + "select[name=brand]>option").eq(0).val();
            if(typeof f.brandNo === 'undefined'){
                f.brandNo = 0;
            }

            model(f);
    
            $("select[name=brand]").off('change').on('change',() => {
                f.brandNo = $(f.id + "select[name=brand] option:selected").val();
                model(f);
            });
        }
    });
            


}


function model(f) {
    $.ajax({
        url: "model.da",
        data: {
            brandNo:f.brandNo
        },
        dataType: "json",
        success: list => {
            $(f.id + "select[name=model] option").remove();
            let str = "";
            if(list.length > 0){
                list.forEach(el => {
                    str += "<option value='"+el.modelNo+"'>"+el.name+"</option>";
                });
            }
            $(f.id + "select[name=model]").html(str);
            f.modelNo = $(f.id + "select[name=model] option").eq(0).val();
            if(typeof f.modelNo === 'undefined'){
                f.modelNo = 0;
            }

            groupAdmin(f);

            $(f.id + "select[name=model]").off('change').on('change',() => {
                f.modelNo = $(f.id + "select[name=model] option:selected").val();
                groupAdmin(f);
            });
        }
    });
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
            if(list.length > 0){
                list.forEach(el => {
                    str += "<option value='"+el.groupNo+"'>"+el.name+"</option>";
                });
            }
            $(f.id + "select[name=groupNo]").html(str);
            f.groupNo = $(f.id + "select[name=groupNo]>option").eq(0).val();
            if(typeof f.groupNo === 'undefined'){
                f.groupNo = 0;
            }

            if(f.level == 1 && $("#selectName").val() != "b"){
                $("#selectName").off('change').on('change',() => {
                    if ($("#selectName").val() == "a") {
                        $("#nameA").removeAttr("disabled");
                        $("#nameB").prop("disabled", true);
                        $("#selectNameA").show();
                        $("#selectNameB").hide();
                    }else{
                        $("#nameA").prop("disabled", true);
                        $("#nameB").removeAttr("disabled");
                        $("#selectNameA").hide();
                        $("#selectNameB").show();
                        productAdmin(f);
                    }
                });
            }else{
                productAdmin(f);
            }

            $(f.id + "select[name=groupNo]").off('change').on('change',() => {
                f.groupNo = $(f.id + "select[name=groupNo]>option:selected").val();
                productAdmin(f);
            });
        }
    });
}

function productAdmin(f){
    $.ajax({
        url: "productAdmin.pr",
        data: {
            groupNo:f.groupNo
        },
        dataType: "json",
        success: list => {

            let str = "";
            
            if(list.length > 0){
                list.forEach(el => {
                    str += "<option value='"+el.productNo+"'>"+el.color+"</option>";
                });
            }

            $(f.id + "select[name=productNo]").html(str);
            f.productNo = $(f.id + "select[name=productNo]>option").eq(0).val();

            if(typeof f.productNo === 'undefined'){
                f.productNo = 0;
            }

            detail(f);

            $(f.id + "select[name=productNo]").on('change',() => {
                f.productNo = $(f.id + "select[name=productNo]>option:selected").val();
                detail(f);
            });
        }
    });
}


function detail(f){
    $.ajax({
        url: "detailAdmin.pr",
        data: {
            productNo:f.productNo
        },
        dataType: "json",
        success: result => {
            if(result == null){
                return;
            }
            if(f.level == 3){
                const won = /\B(?=(\d{3})+(?!\d))/g;
                const comma = ",";
                let price = String(result.price).replace(won, comma);
                let str = "<tr>";
                str += "<td><img class='img-thumbnail' src='"+result.filePath+result.changeName+"' alt='thumbnail'></td>";
                str += "<td>";
                str += "<div class='fs-5'><span>"+result.brand+"</span>";
                str += "<span>"+result.name+"</span></div>";
                str += "</td>";
                str += "<td>"+result.color+"<div><strong>"+price+" 원</strong></div></td>";
                str += "<td>2022-12-30</td>";
                str += "</tr>";
                $("#whatToDelete3").html(str);
            }else{
                $(f.id + "input[name=price]").val(result.price);
                $(f.id + "input[name=quantity]").val(result.quantity);
                $(f.id + "textarea[name=content]").html(result.content);
                if(f.level == 2){
                    $(f.id + "input[name=name]").val(result.name);
                    $(f.id + "input[name=color]").val(result.color);
                    console.log(result);
                }
            }
        }
    });
    return;
}
