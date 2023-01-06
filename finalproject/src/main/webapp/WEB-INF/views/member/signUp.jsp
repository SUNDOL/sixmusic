<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SIGN UP</title>
</head>

<jsp:include page="../common/header.jsp"/>
<body>

	<div class="bg-light rounded-3">
	<br><br>
      <div class="container-fluid py-5 text-white" style="background-image: url('resources/image/jumbotron/jumbotron-signup.jpg');">
        <h1 class="display-5 fw-bold">Sign Up</h1>
        <p class="col-md-8 fs-4">Welcome to SIXMUSIC</p>
      </div>
    </div>
	
    <div class="container">
        <br>
        <div class="card card-body shadow-sm g-5">
            <form action="submitSignUp.me" method="post" class="justify-content-center">
                <br>
                <div class="mb-3">
                    <label for="memberId" class="form-label">ID <br><small class="msg" id="memberIdMsg">EMAIL
                            형식으로 입력</small></label>
                    <c:if test="${not empty m}">
	                    <input type="email" name="memberId" id="memberId" class="form-control" value="${m.memberId}" required>
	                    <input type="hidden" name="typeNo" value="${m.typeNo}">
                    </c:if>
                    <c:if test="${empty m}">
                    	<input type="email" name="memberId" id="memberId" class="form-control" required>
	                    <input type="hidden" name="typeNo" value="1">
                    </c:if>
                </div>
                <div class="mb-3">
                    <div class="row row-cols-1 row-cols-md-2 g-3">
                        <div class="col">
                            <label for="memberPwd" class="form-label">Password <br><small class="msg"
                                    id="memberPwdMsg">최소 8자 (1개 문자, 숫자 및 1개의 특수문자 포함)</small></label>
                            <input type="password" name="memberPwd" id="memberPwd" class="form-control" required>
                        </div>
                        <div class="col">
                            <label for="checkPwd" class="form-label">Check Password <br><small class="msg"
                                    id="checkPwdMsg">비밀번호 확인</small></label>
                            <input type="password" name="checkPwd" id="checkPwd" class="form-control" required>
                        </div>
                    </div>
                </div>
                <div class="mb-3">
                    <div class="row row-cols-1 row-cols-md-2 g-3">
                        <div class="col">
                            <label for="memberNickname" class="form-label">Your Nickname <br><small class="msg"
                                    id="nicknameMsg">3-16자, 영어(소문자)/숫자/한글</small></label>
                            <input type="text" name="memberNickname" id="memberNickname" class="form-control" required>
                        </div>
                        <div class="col">
                            <label for="memberName" class="form-label">Your Name <br><small class="msg" id="nameMsg">이름
                                    입력 (띄어쓰기 없이)</small></label>
                            <input type="text" name="memberName" id="memberName" class="form-control" required>
                        </div>
                    </div>
                </div>
                <div class="mb-3">
                    <div class="row row-cols-1 row-cols-md-2 g-3">
                        <div class="col">
                            <label for="phone" class="form-label">Phone <br><small class="msg" id="phoneMsg">ex)
                                    01012345678 형식으로 - 없이 입력</small></label>
                            <input type="text" name="phone" id="phone" class="form-control" required>
                        </div>
                        <div class="col">
                            <label for="birthday" class="form-label">Birthday <br><small class="msg"
                                    id="birthdayMsg">ex) 19870629
                                    형식으로 입력</small></label>
                            <input type="text" name="birthday" id="birthday" class="form-control" required>
                        </div>
                    </div>
                </div>
                <div class="mb-3">
                    <div class="row row-cols-1">
                        <div class="col-4">
                            <label for="zicpode" class="form-label">ZIP Code <br><small class="msg">우편번호
                                    입력</small></label>
                            <input type="text" name="zipcode" id="zipcode" class="form-control" onclick="addressAPI();" readonly>
                        </div>
                        <div class="col-8">
                            <label for="address1" class="form-label">Address #1 <br><small class="msg">도로명주소
                                    입력</small></label>
                            <input type="text" name="address1" id="address1" class="form-control" required
                                onclick="addressAPI();" readonly>
                        </div>
                    </div>
                </div>
                <div class="mb-3">
                    <div class="row row-cols-1 row-cols-md-2 g-3">
                        <div class="col">
                            <label for="address2" class="form-label">Address #2 <br><small class="msg">동, 호수 입력,
                                    Optional</small></label>
                            <input type="text" name="address2" id="address2" class="form-control">
                        </div>
                        <div class="col">
                            <label for="address3" class="form-label">Address #3 <br><small
                                    class="msg">Optional</small></label>
                            <input type="text" name="address3" id="address3" class="form-control">
                        </div>
                    </div>
                </div>
                <br>
                <hr>
                <br>
                <div class="mb-3">
                    <div class="row row-cols-1 row-cols-md-2 g-3">
                        <div class="col">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="checkTerms" required>
                                <label class="form-check-label" for="checkTerms">
                                    I Agree to terms and conditions <small class="msg"
                                        id="checkboxCheck">(required)</small>
                                </label>
                            </div>
                        </div>
                        <div class="col text-end">
                            <button class="btn btn-outline-dark" type="submit" id="submit" disabled>Submit</button>
                            <button class="btn btn-outline-dark" type="reset" id="reset">Reset</button>
                        </div>
                    </div>
                </div>
            </form>
            <br>
        </div>
    </div>
</body>
<jsp:include page="../common/footer.jsp"/>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="resources/js/signUp.js"></script>

</html>