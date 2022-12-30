<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MY ACCOUNT</title>
</head>

<jsp:include page="../common/header.jsp"/>
<body>
<br><br><br><br>
    <div class="container">
        <h1 class="fw-bolder">Welcome <span>${loginUser.memberNickname}</span>님!</h1>
        <br>
        <div class="row">
            <div class="col-lg-3 g-1">
                <div class="row">
                    <h3 class="fw-bolder">My Account</h3>
                    <br>
                    <div>Your ID:<br><span class="fw-bold">${loginUser.memberId}</span></div>
                    <div>Your Grade:<br>
                    	<span class="fw-bold">
                    		<c:if test="${loginUser.gradeNo eq 1}">
                    		NORMAL
                    		</c:if>
                    		<c:if test="${loginUser.gradeNo eq 2}">
                    		VIP
                    		</c:if>
                    		<c:if test="${loginUser.gradeNo eq 3}">
                    		관리자
                    		</c:if>
                    	</span>
                    </div>
                    <div>Your Points:<br><span class="fw-bold">${loginUser.point}</span></div>
                    <div>SIXMUSIC family since<br><span class="fw-bold">${loginUser.createDate}</span></div>
                </div>
                <div class="row">
                    <br>
                </div>
                <div class="row">
                    <h3 class="fw-bolder">Update</h3>
                    <br>
                    <div><a class="link-secondary" href="#" data-bs-toggle="modal" data-bs-target="#changePassword">Change
                            Password</a></div>
                    <div><a class="link-secondary" href="#" data-bs-toggle="modal" data-bs-target="#changePersonalInfo">Change Personal Info</a></div>
                    <div><a class="link-secondary" href="#" data-bs-toggle="modal" data-bs-target="#changeAddress">Change Address</a></div>
                </div>
                <div class="row">
                    <br>
                </div>
                <div class="row">
                    <h3 class="fw-bolder">Leave</h3>
                    <br>
                    <div><a class="link-secondary" href="#" data-bs-toggle="modal" data-bs-target="#leaveSixmusic">Leave SIXMUSIC</a></div>
                </div>
                <br>
                <br>
            </div>
            <div class="col-lg-9 g-1">
                <h3 class="fw-bolder">My Activities</h3>
                <br>
                <h4>My Articles on Communities</h4>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Community</th>
                            <th>Title</th>
                            <th>Created at</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Bass</td>
                            <td>안넝하세요 베이스</td>
                            <td>2022-12-28</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Electric</td>
                            <td>there is no cow level</td>
                            <td>2022-12-28</td>
                        </tr>
                    </tbody>
                </table>
                <br>
                <h4>My Replies on Communities</h4>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Community</th>
                            <th>Content</th>
                            <th>Created at</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>101</td>
                            <td>Bass</td>
                            <td>power overwhelming</td>
                            <td>2022-12-28</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Modal: Change Password -->
    <div class="modal fade" id="changePassword" tabindex="-1" aria-labelledby="changePasswordLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5 fw-bold" id="changePasswordLabel">Change Password</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="updateMemberPwd.me" method="post">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-4">
                                <label for="currentPwd" class="form-label">Your Current Password<br>
                                    <small class="msg"
                                        id="currentPwdMsg">현재 비밀번호 입력</small>
                                </label>
                            </div>
                            <div class="col-8">
                            	<input type="hidden" name="memberNo" value="${loginUser.memberNo}">
                                <input type="password" name="currentPwd" id="currentPwd" class="form-control" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <label for="newPwd" class="form-label">Your New Password<br>
                                    <small class="msg"
                                        id="newPwdMsg">새 비밀번호 입력</small>
                                </label>
                            </div>
                            <div class="col-8">
                                <input type="password" name="memberPwd" id="newPwd" class="form-control" placeholder="최소 8자 (1개 문자, 숫자 및 1개의 특수문자 포함)" minlength="8" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <label for="checkNewPwd" class="form-label">Check Your New Password<br>
                                    <small class="msg"
                                        id="checkNewPwdMsg">새 비밀번호 확인</small>
                                </label>
                            </div>
                            <div class="col-8">
                                <input type="password" name="checkNewPwd" id="checkNewPwd" class="form-control" required>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-dark" id="changePasswordSubmit" disabled>Save changes</button>
                        <button type="button" class="btn btn-outline-dark" data-bs-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Modal: Change Personal Info -->
    <div class="modal fade" id="changePersonalInfo" tabindex="-1" aria-labelledby="changePersonalInfoLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5 fw-bold" id="changePersonalInfoLabel">Change Personal Info</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="updateAccount.me" method="post">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-4">
                                <label for="newName" class="form-label">Your Name<br>
                                    <small class="msg"
                                        id="newNameMsg">이름</small>
                                </label>
                            </div>
                            <div class="col-8">
                            	<input type="hidden" name="memberNo" value="${loginUser.memberNo}">
                                <input type="text" name="memberName" id="newName" class="form-control" placeholder="띄어쓰기 없이" required value="${loginUser.memberName}">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <label for="newNickname" class="form-label">Your Nickname<br>
                                    <small class="msg"
                                        id="newNicknameMsg">닉네임</small>
                                </label>
                            </div>
                            <div class="col-8">
                                <input type="text" name="memberNickname" id="newNickname" class="form-control" placeholder="3-16자, 영어(소문자)/숫자/한글" minlength="3" maxlength="16" required value="${loginUser.memberNickname}">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <label for="newPhone" class="form-label">Your Phone<br>
                                    <small class="msg"
                                        id="newPhoneMsg">전화번호</small>
                                </label>
                            </div>
                            <div class="col-8">
                                <input type="text" name="phone" id="newPhone" class="form-control" placeholder="ex) 01012345678 형식으로 - 없이 입력" maxlength="10" required value="${loginUser.phone}">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <label for="newBirthday" class="form-label">Your Birthday<br>
                                    <small class="msg"
                                        id="newBirthdayMsg">생일</small>
                                </label>
                            </div>
                            <div class="col-8">
                                <input type="text" name="birthday" id="newBirthday" class="form-control" placeholder="ex) 19870629 형식으로 입력" maxlength="8" required value="${loginUser.birthday}">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-dark">Save changes</button>
                        <button type="button" class="btn btn-outline-dark" data-bs-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Modal: Change Address -->
    <div class="modal fade" id="changeAddress" tabindex="-1" aria-labelledby="changeAddressLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5 fw-bold" id="changeAddressLabel">Change Address</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="updateAccount.me" method="post">
                    <div class="modal-body">
                        <div class="mb-3">
                            <div class="row row-cols-1">
                                <div class="col-4">
                                    <label for="zicpode" class="form-label">ZIP Code <br><small class="msg">우편번호
                                            입력</small></label>
                                    <input type="hidden" name="memberNo" value="${loginUser.memberNo}">
                                    <input type="text" name="zipcode" id="zipcode" class="form-control" value="${loginUser.zipcode}" required onclick="addressAPI2();">
                                </div>
                                <div class="col-8">
                                    <label for="address1" class="form-label">Address #1 <br><small class="msg">도로명주소
                                            입력</small></label>
                                    <input type="text" name="address1" id="address1" class="form-control" value="${loginUser.address1}" required
                                        onclick="addressAPI2();">
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <div class="row row-cols-1 row-cols-md-2 g-3">
                                <div class="col">
                                    <label for="address2" class="form-label">Address #2 <br><small class="msg">동, 호수 입력,
                                            Optional</small></label>
                                    <input type="text" name="address2" id="address2" class="form-control" value="${loginUser.address2}">
                                </div>
                                <div class="col">
                                    <label for="address3" class="form-label">Address #3 <br><small
                                            class="msg">Optional</small></label>
                                    <input type="text" name="address3" id="address3" class="form-control" value="${loginUser.address3}">
                                </div>
                            </div>
                        </div>
                        <br>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-dark">Save changes</button>
                        <button type="button" class="btn btn-outline-dark" data-bs-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Modal: Leave SIXMUSIC -->
    <div class="modal fade" id="leaveSixmusic" tabindex="-1" aria-labelledby="leaveSixmusicLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5 fw-bold" id="leaveSixmusicLabel">Leave SIXMUSIC</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="#">
                    <div class="modal-body">
                        <div class="row">
                            <p class="fw-bold">
                                탈퇴 후 동일한 아이디, 닉네임으로 SIXMUSIC재가입이 불가합니다. <br>
                                탈퇴 이전의 구매 내역, 적립된 포인트 등이 모두 사라집니다. <br><br>
                                탈퇴를 원하신다면 비밀번호 입력 후 'Leave SIXMUSIC'을 클릭해주세요. <br>
                            </p>
                            <br>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <label for="confirmPwd" class="form-label">Input Password<br>
                                    <small class="msg"
                                        id="confirmPwdMsg">비밀번호 입력</small>
                                </label>
                            </div>
                            <div class="col-8">
                                <input type="password" name="confirmPwd" id="confirmPwd" class="form-control" required>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-outline-dark" disabled>Leave SIXMUSIC</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니오 탈퇴하면 엄마한테 혼나요</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
<jsp:include page="../common/footer.jsp"/>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="resources/js/myaccount.js"></script>

</html>