function kakaoPay(){
    $.ajax({
        url:'kakaopay.cls',
        dataType:'json',
        success:function(data){
        	if(data!=null){
            	const url = data['next_redirect_pc_url'];
            	window.open(url);
        	}else{
        		location.href = 'error.co';
        	}
        },
        error:function(error){
            alert(error);
        }
    })
}