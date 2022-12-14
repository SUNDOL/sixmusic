$(function(){
    //카테고리 리스트 출력
    $.ajax({
        url:"catrgory.da",
        dataType:"json",
        success:list=>{
            let str = "";
            list.forEach(el => {
                str += "<div class='form-check'>";
                str += "<input class='form-check-input' type='radio' name='categoryNo' id='category' value='"+el.categoryNo+"'>";
                str += "<label class='form-check-label' for='"+el.name+"'>"+el.name+"</label>";
                str += "</div>";
            });
            $("#category-area").html(str);
        }, 
        error:()=>{
            console.log("error!!");
        }
    })

    //
    //가격 리스트 출력
    $.ajax({
        url:"price.da",
        dataType:"json",
        success:list=>{
            let str = "";
            list.forEach((el, i) => {
                str += "<div class='form-check'>";
                str += "<input class='form-check-input' type='checkbox' name='priceNo' id='price' value='"+el.priceNo+"'>";
                str += "<label class='form-check-label' for='"+el.name+"'>"
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
    })
})