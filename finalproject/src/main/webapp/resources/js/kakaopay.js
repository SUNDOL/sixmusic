function kakaoPay(){
    $.ajax({
        url:'pay.or',
        dataType:'json',
        data: {
            point: $("#confirm-point").val()
        },
        success:function(data){
        	if(data!=null){
            	const url = data['next_redirect_pc_url'];
                window.open(url, '_self');
        	}else{
        		location.href = 'error.co';
        	}
        },
        error:function(error){
            alert(error);
        }
    });

}