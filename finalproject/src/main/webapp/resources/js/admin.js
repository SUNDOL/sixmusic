$("#selectNameA").show();
$("#selectNameB").hide();
$("#oldAttachment2").show();
$("#newAttachment2").hide();
$("#modelsList2").hide();
$("#selectName").on("change", function () {
    if ($("#selectName").val() == "a") {
        $("#nameA").removeAttr("disabled");
        $("#nameB").attr("disabled", true);
        $("#selectNameA").show();
        $("#selectNameB").hide();
    }
    if ($("#selectName").val() == "b") {
        $("#selectNameA").hide();
        $("#selectNameB").show();
        $("#nameA").attr("disabled", true);
        $("#nameB").removeAttr("disabled");

    }
});

$("#brandsList2").on("change", function() {
    $("#modelsList2").show();
});

function modifyPics() {
    $("#oldAttachment2").hide();
    $("#newAttachment2").show();
}

$("#newModel").on("show.bs.modal",()=>{
    $.ajax({
        url:"brandData.ad",
        success: result => {
            let str = "";
            result.forEach(e => {
                str+="<option value='"+e.brandNo+"'>"+e.name+"</option>";

            });
            console.log(str);
            $("#newModel #brandsList1").html(str);
        }
    });
});

$("#modiBrand").on("show.bs.modal",()=>{
    $.ajax({
        url:"brandData.ad",
        success: result => {
            let str = "";
            result.forEach(e => {
                str+="<option value='"+e.brandNo+"'>"+e.name+"</option>";

            });
            $("#modiBrand #brandsList").html(str);
        }
    });
});

$("#modiModel").on("show.bs.modal",()=>{
    $.ajax({
        url:"brandData.ad",
        success: result => {
            let str = "";
            result.forEach(e => {
                str+="<option value='"+e.brandNo+"'>"+e.name+"</option>";

            });
            $("#modiModel #brandsList2").html(str);

            $("#modiModel #brandsList2").change(()=>{
                console.log($("#modiModel #brandsList2 option:selected").val())
                $.ajax({
                    url:"modelData.ad",
                    data:{brandNo:$("#modiModel #brandsList2 option:selected").val()},
                    success: result2 => {
                        console.log(result2)
                        let str2 = "";
                        result2.forEach(e => {
                            str2+="<option value='"+e.modelNo+"'>"+e.name+"</option>";
            
                        });
                        $("#modiModel #modelsList22").html(str2);
                    }
                });
            });
        }
    });
});

$("#addNewProducts").on("show.bs.modal",()=>{
    productClear();
    $("select[name=type]").change(()=>{
        let f = {level : 1};
        typeCraft(f)
    });
});


$("#modifyProductInfo").on("show.bs.modal",()=>{
    productClear();
    $("select[name=type]").change(()=>{
        let f = {level : 2};
        typeCraft(f)
    });
});


$("#deleteProducts").on("show.bs.modal",()=>{
    productClear();
    $("select[name=type]").change(()=>{
        let f = {level : 3};
        typeCraft(f)
    });
});
function typeCraft(f){
    f.typeNo = $("select[name=type]>option:selected").val();
    brand(f);
}

function productClear(){
    $("select[name=brand]").html("");
    $("select[name=model]").html("");
    $("select[name=groupNo]").html("");
    $("select[name=productNo]").html("");
}