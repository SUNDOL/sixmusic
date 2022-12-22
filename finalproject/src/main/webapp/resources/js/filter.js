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
    });

    //가격 리스트 출력
    $.ajax({
        url:"price/list/select.da",
        dataType:"json",
        success:list=>{
            let str = "";
            list.forEach((el, i) => {
                str += "<div class='form-check'>";
                str += "<input class='form-check-input' type='radio' name='priceNo' id='price-"+el.priceNo+"' value='"+el.priceNo+"'>";
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
            $("input[name=priceNo]").change(function(){
                filterSearch({
                    typeNo:$("input[name=typeNo]:checked").val(),
                    brandNo:$("input[name=brandNo]:checked").val(),
                    modelNo:$("input[name=modelNo]:checked").val()
                });
                //brand
                $.ajax({
                    url:"brand/list/select.da",
                    data:{typeNo:$("input[name=typeNo]:checked").val(),priceNo:$("input[name=priceNo]:checked").val()},
                    dataType:"json",
                    success:list=>{
                        let str = "";
                        list.forEach(el => {
                            str+= "<div class='form-check'>";
                            str+= "<input class='form-check-input' type='radio' id='brand-"+el.brandNo+"' name='brandNo' value='"+el.brandNo+"'>";
                            str+= "<label class='form-check-label' for='brand-"+el.brandNo+"'>"+el.name+"("+el.quantity+")</label>";
                            str+= "</div>";              
                        });
                        filterReset(2);
                        $("#brand-area").html(str);
                        modelFilter();
                    }, 
                    error:()=>{
                        console.log("error!!");
                    }
                });
            });
        }, 
        error:()=>{
            console.log("error!!");
        }
    });

    //type
    function typeFilter(){
        $("input[name=categoryNo]").change(function(){
            //카테고리 검색
            filterSearch({categoryNo:$(this).val()});
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
                    filterReset(1);
                    $("#type-area").html(str);
                    brandFilter();
                }, 
                error:()=>{
                    console.log("error!!");
                }
            });
        });
    }
    
    //brand
    function brandFilter(){
        $("input[name=typeNo]").change(function(){
            //타입 검색
            filterSearch({typeNo:$(this).val()});
            $.ajax({
                url:"brand/list/select.da",
                data:{typeNo:$(this).val(),priceNo:$("input[name=priceNo]:checked").val()},
                dataType:"json",
                success:list=>{
                    let str = "";
                    list.forEach(el => {
                        str+= "<div class='form-check'>";
                        str+= "<input class='form-check-input' type='radio' id='brand-"+el.brandNo+"' name='brandNo' value='"+el.brandNo+"'>";
                        str+= "<label class='form-check-label' for='brand-"+el.brandNo+"'>"+el.name+"("+el.quantity+")</label>";
                        str+= "</div>";              
                    });
                    filterReset(2);
                    $("#brand-area").html(str);
                    modelFilter();
                }, 
                error:()=>{
                    console.log("error!!");
                }
            });
        });
    }
    //model
    function modelFilter(){
        $("input[name=brandNo]").change(function(){
            //타입 브랜드 검색
            filterSearch({typeNo:$("input[name=typeNo]:checked").val(),brandNo:$(this).val()});
            $.ajax({
                url:"model/list/select.da",
                data:{brandNo:$(this).val(),priceNo:$("input[name=priceNo]:checked").val()},
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
                    $("input[name=modelNo]").change(function(){
                        //타입 브랜드 모델 검색
                        filterSearch(
                            {
                            typeNo:$("input[name=typeNo]:checked").val(),
                            brandNo:$("input[name=brandNo]:checked").val(),
                            modelNo:$("input[name=modelNo]:checked").val()
                            });
                    })
    
                }, 
                error:()=>{
                    console.log("error!!");
                }
            });
        });
    }

    function filterReset(level){

        switch (level) {
            case 1:
                $("#brand-area").empty();
            case 2:
                $("#model-area").empty();
        }
    }

    filterSearch({});

    function filterSearch(f){
            
        console.log();
        $.ajax({
            url:"filter/list/select.pr",
            data:{
                categoryNo:f.categoryNo,
                typeNo:f.typeNo,
                brandNo:f.brandNo,
                modelNo:f.modelNo,
                priceNo:$("input[name=priceNo]:checked").val(),
            },
            success:result=>{
            	console.log(result);

            }, 
            error:()=>{
                console.log("error!!");
            }
        });
    }

});
    
