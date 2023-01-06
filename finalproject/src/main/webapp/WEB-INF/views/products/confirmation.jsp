<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

	<div class="bg-light rounded-3">
	<br><br>
      <div class="container-fluid py-5 text-white" style="background-image: url('resources/image/jumbotron/jumbotron-confirmation.jpg');">
        <h1 class="display-5 fw-bold">ORDER CONFIRMATION</h1>
        <p class="col-md-8 fs-4"><span>${loginUser.memberNickname}</span>님의 ORDER CONFIRMATION</p>
      </div>
    </div>

    <div class="container">
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
        
        <div class="row">
            <div class="col fs-4 fw-bold text-start">Points Available: <span id="confirm-points"></span>P</div>
           	<input id="confirm-points-hidden" name="confirm-points-hidden" type="hidden" value="0">
            <div class="col input-group fs-4 fw-bold text-end">
                <label for="confirm-point-range" class="form-label">Points Used: <span id="confirm-pointsUsed">0</span> Points</label>
				<input type="range" class="form-range" min="0" max="${loginUser.point}" step="1000" id="confirm-point-range" value="0">
            </div>
        </div>
        
        <br>
        <div class="fs-3 fw-bold text-end">TOTAL PRICE: <span id="confirm-showTotalPrice"></span>원</div>
        <div class="text-end">
	        <input type="hidden" name="confirm-point" id="confirm-point" value="0">
	        <button class="btn" role="submit"><img src="resources/kakaologinbuttonimg/payment_icon_yellow_medium.png" alt="pay" onclick="kakaoPay();"></button>
        </div>
    </div>
</body>
<jsp:include page="../common/footer.jsp"/>
<script src="resources/js/confirmation.js"></script>
<script src="resources/js/kakaopay.js"></script>


<script>
	showConfirmationInfo();
    $("#confirm-points").text(String("${loginUser.point}").replace(won, comma));
</script>

</html>