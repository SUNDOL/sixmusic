function kakaoPay(){
    $.ajax({
        url:'kakaopay.cls',
        dataType:'json',
        success:function(data){
        	console.log(data);
            const url = data['next_redirect_pc_url'];
            window.open(url);
            
        },
        error:function(error){
            alert(error);
        }
    })
}