<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <title>MY ORDER HISTORY</title>
</head>

<jsp:include page="../common/header.jsp"/>
<body>
<br><br><br><br>

    <div class="container">
        <h1 class="fw-bolder"><span>${loginUser.memberNickname}</span>님의 ORDER HISTORY</h1>
        <input type="hidden" id="hidden-memberNo" value="${loginUser.memberNo}">
        <br>
        <h3 class="fw-bold">Your Recent Orders</h3>
        <table class="table table-hover" style="cursor:pointer;">
            <thead>
                <tr>
                    <th class="col-md-1">Product</th>
                    <th colspan="2"></th>
                    <th>Date</th>
                    <th>Review</th>
                </tr>
            </thead>
            <tbody id="recentOrderBody">
            </tbody>
        </table>
        <br>
        <h3 class="fw-bold">Your Orders</h3>
        <table class="table table-hover" style="cursor:pointer;">
            <thead>
                <tr>
                    <th class="col-md-1">Product</th>
                    <th colspan="2"></th>
                    <th>Date</th>
                    <th>Review</th>
                </tr>
            </thead>
            <tbody id="orderHistoryBody">
            </tbody>
        </table>
        <nav aria-label="Page navigation" class="justify-content-center" style="cursor:pointer;">
  			<ul class="pagination justify-content-center" id="orderHistoryFoot"></ul>
  		</nav>
    </div>
    
    <!-- Modal for Review/write -->
    <div class="modal fade" id="writeReview" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="writeReviewLabel" aria-hidden="true">
  		<div class="modal-dialog modal-lg modal-dialog-centered">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h1 class="modal-title fs-5" id="writeReview"><strong>Write Your Review</strong></h1>
        			<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      			</div>
      			<form action="addToReview.me" method="post" enctype="multipart/form-data">
      			<div class="modal-body">
	      				<input type="hidden" name="memberNo" value="${loginUser.memberNo}">
    	  				<input type="hidden" name="memberNickname" value="${loginUser.memberNickname}">
    	  				<input type="hidden" id="reviewProductNo" name="productNo" value="">
    	  				<label for="rating" class="form-label">RATING (<span id=showYourRating>0</span>)</label>
						<input type="range" name="rating" class="form-range" min="0" max="5" id="yourRating" value="0">
      				<div class="input-group">
      					<textarea class="form-control" name="content" rows="3" style="resize:none;" placeholder="리뷰 입력" required></textarea>
      				</div>
      				<br>
      				<div class="input-group">
  						<input type="file" class="form-control" id="upfile" name="image" required>
      				</div>        			
      			</div>
      			<div class="modal-footer">
        			<button type="submit" class="btn btn-dark">Submit</button>
        			<button type="button" class="btn btn-outline-dark" data-bs-dismiss="modal">Close</button>
      			</div>
      			</form>
    		</div>
  		</div>
	</div>
	
	<!-- Modal for Review/modify -->
	<div class="modal fade" id="modifyReview" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="modifyReviewLabel" aria-hidden="true">
  		<div class="modal-dialog modal-lg modal-dialog-centered">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h1 class="modal-title fs-5" id="modifyReview"><strong>Modify Your Review</strong></h1>
        			<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      			</div>
      			<form action="confirmReviewModification.me" method="post" enctype="multipart/form-data">
      			<div class="modal-body">
        			<input type="hidden" name="memberNo" value="${loginUser.memberNo}">
    	  			<input type="hidden" name="memberNickname" value="${loginUser.memberNickname}">
    	  			<input type="hidden" id="reviewProductNo2" name="refProductNo" value="">
    	  			<input type="hidden" id="reviewOriginName2" name="originName" value="">
    	  			<input type="hidden" id="reviewFilePath2" name="filePath" value="">
    	  			<input type="hidden" id="reviewChangeName2" name="changeName" value="">
        			<label for="rating" class="form-label">RATING (<span id=showYourRating2>0</span>)</label>
					<input type="range" name="rating" class="form-range" min="0" max="5" id="yourRating2" value="0">
					<div class="input-group">
      					<textarea class="form-control" id="yourReview2" name="content" rows="3" style="resize:none;" placeholder="리뷰 입력"></textarea>
      				</div>
      				<br>
      				<div class="input-group" id="upfile2Div-1">
      					<span class="input-group-text">현재 첨부파일</span>
      					<input type="text" class="form-control" id="checkFile" name="image2" value="" readonly>
      					<a class="btn btn-outline-dark" onclick="modifyPic();">변경</a>
      				</div>
      				<div class="input-group" id="upfile2Div-2">
  						<input type="file" class="form-control" id="upfile2" name="image">
      				</div>
      			</div>
      			<div class="modal-footer">
        			<button type="submit" class="btn btn-dark">Submit</button>
        			<button type="button" class="btn btn-outline-dark" data-bs-dismiss="modal">Close</button>
      			</div>
      			</form>
    		</div>
  		</div>
	</div>
    
    
</body>
<jsp:include page="../common/footer.jsp"/>
<script src="resources/js/myorderhistory.js"></script>
<script>
	myRecentOrder();
	myOrderHistory(1);
</script>

</html>