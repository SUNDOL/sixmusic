$(function(){
    //카테고리 리스트 출력
    $.ajax({
        url:"catrgory/list/select.da",
        dataType:"json",
        success:list=>{
            let str = "";
            list.forEach(el => {
                str += "<div class='form-check'>";
                str += "<input class='form-check-input' type='radio' name='categoryNo' id='category-"+el.categoryNo+"' value='"+el.categoryNo+"'>";
                str += "<label class='form-check-label' for='category-"+el.categoryNo+"'>"+el.name+"</label>";
                str += "</div>";
            });
            $("#category-area").html(str);
            //type을 출력
            typeFilter();
        }, 
        error:()=>{
            console.log("error!!");
        }
    })

    //가격 리스트 출력
    $.ajax({
        url:"price/list/select.da",
        dataType:"json",
        success:list=>{
            let str = "";
            list.forEach((el, i) => {
                str += "<div class='form-check'>";
                str += "<input class='form-check-input' type='checkbox' name='priceNo' id='price-"+el.priceNo+"' value='"+el.priceNo+"'>";
                str += "<label class='form-check-label' for='price-"+el.name+"'>"
                const won = /\B(?=(\d{3})+(?!\d))/g;
                const comma = ",";
                let min = String(el.min).replace(won,comma);
                let max = String(el.max).replace(won,comma);
                if (i == 0) {
                    str += max+'원 미만';
                }else if(i == list.length - 1){
                    str += min+'원 이상';
                }else{
                    str += min+"원 - "+max+'원';
                }
                str += "</label>";
                str += "</div>";
            });
            $("#price-area").html(str);
        }, 
        error:()=>{
            console.log("error!!");
        }
    });
});
    
function typeFilter(){
    $("input[name=categoryNo]").change(function(){
        $.ajax({
            url:"type/list/select.da",
            data:{categoryNo:$(this).val()},
            dataType:"json",
            success:list=>{
                let str = "";
                list.forEach(el => {
                    str+= "<div class='form-check type1'>"
                    str+= "<input class='form-check-input' type='radio' name='typeNo' id='type-"+el.typeNo+"' value='"+el.typeNo+"'>";
                    str+= "<label class='form-check-label' for='type-"+el.typeNo+"'>"+el.name+"</label>";
                    str+= "</div>";
                });
                $("#type-area").html(str);
                //brand를 출력
                brandFilter();
            }, 
            error:()=>{
                console.log("error!!");
            }
        });
    });
}


function brandFilter(){
    $("input[name=typeNo]").change(function(){
        $.ajax({
            url:"brand/list/select.da",
            data:{typeNo:$(this).val()},
            dataType:"json",
            success:list=>{
                let str = "";
                list.forEach(el => {
                    str+= "<div class='form-check'>";
                    str+= "<input class='form-check-input' type='radio' id='brand-"+el.brandNo+"' name='brandNo' value='"+el.brandNo+"'>";
                    str+= "<label class='form-check-label' for='brand-"+el.brandNo+"'>"+el.name+"("+el.quantity+")</label>";
                    str+= "</div>";              
                });
                $("#brand-area").html(str);
                ModelFilter()
            }, 
            error:()=>{
                console.log("error!!");
            }
        });
    });
}

function ModelFilter(){
    $("input[name=brandNo]").change(function(){
        $.ajax({
            url:"model/list/select.da",
            data:{brandNo:$(this).val()},
            dataType:"json",
            success:list=>{
                let str = "";
                list.forEach(el => {
                    str+= "<div class='form-check'>";
                    str+= "<input class='form-check-input' type='checkbox' id='model-"+el.modelNo+"' name='modelNo' value='"+el.modelNo+"'>";
                    str+= "<label class='form-check-label' for='model-"+el.modelNo+"'>"+el.name+"("+el.quantity+")</label>";
                    str+= "</div>";              
                });
                $("#model-area").html(str);

            }, 
            error:()=>{
                console.log("error!!");
            }
        });
    });
}