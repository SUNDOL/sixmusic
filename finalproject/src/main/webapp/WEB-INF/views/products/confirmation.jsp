<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CONFIRMATION</title>
</head>

<jsp:include page="../common/header.jsp"/>
<body>
	<br><br><br><br>
    <div class="container">
        <h1><b>ORDER CONFIRMATION</b></h1>
        <br>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th class="col-md-1">Your Order</th>
                    <th colspan="2"></th>
                    <th></th>
                </tr>
            </thead>
            <tbody id="confirm-info">    
            </tbody>
        </table>
        <div class="fs-3 text-end"><strong>TOTAL PRICE: <span id="confirm-showTotalPrice"></span> 원</strong>
        <button class="btn" onclick="kakaoPay();"><img src="resources/kakaologinbuttonimg/payment_icon_yellow_medium.png" alt="pay"></button>
        </div>
    </div>
</body>
<jsp:include page="../common/footer.jsp"/>
<script src="resources/js/confirmation.js"></script>
<script src="resources/js/kakaopay.js"></script>
<script>
	showConfirmationInfo();
</script>

</html>