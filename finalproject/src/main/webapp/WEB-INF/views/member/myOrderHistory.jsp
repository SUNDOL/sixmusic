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
        <br>
        <h3 class="fw-bold">Your Recent Orders</h3>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th class="col-md-1">Product</th>
                    <th colspan="2"></th>
                    <th>Date</th>
                    <th>View</th>
                    <th>Review</th>
                </tr>
            </thead>
            <tbody id="recentOrderBody">
            </tbody>
        </table>
        <br>
        <h3 class="fw-bold">Your Orders</h3>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th class="col-md-1">Product</th>
                    <th colspan="2"></th>
                    <th>Date</th>
                    <th>View</th>
                    <th>Review</th>
                </tr>
            </thead>
            <tbody id="orderHistoryBody">
            </tbody>
            <tfoot id="orderHistoryFoot">
            </tfoot>
        </table>
    </div>
</body>
<jsp:include page="../common/footer.jsp"/>
<script src="resources/js/myorderhistory.js"></script>
<script>
	myRecentOrder();
	myOrderHistory(1);
</script>

</html>