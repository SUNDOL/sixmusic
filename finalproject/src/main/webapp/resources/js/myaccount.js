$("#newPwd").keyup(function () {
    var currentPwd = $("#currentPwd").val();
    var newPwd = $("#newPwd").val();
    var pwdRegExp = new RegExp(/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/);
    if (newPwd.match(pwdRegExp)) {
        if (newPwd == currentPwd) {
            var msg = "기존 비밀번호와 다르게 변경해주세요."
            $("#newPwdMsg").css('color', 'red');
            $("#newPwdMsg").text(msg);
        }
        if (newPwd != currentPwd) {
            var msg = "좋은 비밀번호네요!"
            $("#newPwdMsg").css('color', 'green');
            $("#newPwdMsg").text(msg);
        }
    }
    if (!newPwd.match(pwdRegExp)) {
        var msg = "사용할 수 없는 비밀번호입니다."
        $("#newPwdMsg").css('color', 'red');
        $("#newPwdMsg").text(msg);
    }
    if (newPwd == "") {
        var msg = "새 비밀번호 입력";
        $("#newPwdMsg").css('color', 'black');
        $("#newPwdMsg").text(msg);
    }
});

$("#checkNewPwd").keyup(function () {
    var newPwd = $("#newPwd").val();
    var checkNewPwd = $("#checkNewPwd").val();
    if (newPwd == checkNewPwd) {
        var msg = "비밀번호 확인 완료."
        $("#checkNewPwdMsg").css('color', 'green');
        $("#checkNewPwdMsg").text(msg);
        $("#changePasswordSubmit").attr("disabled", false);
    }
    if (newPwd != checkNewPwd) {
        var msg = "비밀번호가 일치하지 않습니다.";
        $("#checkNewPwdMsg").css('color', 'red');
        $("#checkNewPwdMsg").text(msg);
    }
    if (checkNewPwd == "") {
        var msg = "새 비밀번호 확인";
        $("#checkNewPwdMsg").css('color', 'black');
        $("#checkNewPwdMsg").text(msg);
    }
});

$("#newPhone").keyup(function () {
    var phone = $("#newPhone").val();
    var phoneRegExp = new RegExp(/^[0-9]{11,11}$/);
    if (phone.match(phoneRegExp)) {
        var msg = "전화번호 확인 완료."
        $("#newPhoneMsg").css('color', 'green');
        $("#newPhoneMsg").text(msg);
    }
    if (!phone.match(phoneRegExp)) {
        var msg = "전화번호를 다시 확인하세요."
        $("#newPhoneMsg").css('color', 'red');
        $("#newPhoneMsg").text(msg);
    }
    if (phone == "") {
        var msg = "전화번호";
        $("#newPhoneMsg").css('color', 'black');
        $("#newPhoneMsg").text(msg);
    }
});

$("#newBirthday").keyup(function () {
    var birthday = $("#newBirthday").val();
    var birthdayRegExp = new RegExp(/^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/);
    if (birthday.match(birthdayRegExp)) {
        var msg = "생년월일 확인 완료."
        $("#newBirthdayMsg").css('color', 'green');
        $("#newBirthdayMsg").text(msg);
    }
    if (!birthday.match(birthdayRegExp)) {
        var msg = "생년월일 형식을 다시 확인해주세요."
        $("#newBirthdayMsg").css('color', 'red');
        $("#newBirthdayMsg").text(msg);
    }
    if (birthday == "") {
        var msg = "ex) 19870629 형식으로 입력";
        $("#newBirthdayMsg").css('color', 'black');
        $("#newBirthdayMsg").text(msg);
    }
});

$("#newNickname").keyup(function () {
    var memberNickname = $("#newNickname").val();
    var nicknameRegExp = new RegExp(/^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{3,16}$/);
    if (memberNickname == "") {
        var msg = "닉네임";
        $("#newNicknameMsg").css('color', 'black');
        $("#newNicknameMsg").text(msg);
    }
    if (memberNickname != "" && memberNickname.length < 3) {
        var msg = "닉네임은 3글자 이상이어야 합니다.";
        $("#newNicknameMsg").css('color', 'red');
        $("#newNicknameMsg").text(msg);
    } else {
        if (memberNickname.match(nicknameRegExp)) {
            $.ajax({
                url: "nicknameCheck.me",
                data: {
                    memberNickname: memberNickname
                },
                success: function (result) {
                    if (result == 0) {
                        var msg = "좋은 닉네임이네요!";
                        $("#newNicknameMsg").css('color', 'green');
                        $("#newNicknameMsg").text(msg);
                    } else {
                        var msg = "사용할 수 없는 닉네임입니다."
                        $("#newNicknameMsg").css('color', 'red');
                        $("#newNicknameMsg").text(msg);
                    }
                },
                error: function () {
                    console.log("통신 실패");
                }
            });
        }
        if (memberNickname != "" && !memberNickname.match(nicknameRegExp)) {
            var msg = "닉네임을 다시 확인해주세요."
            $("#newNicknameMsg").css('color', 'red');
            $("#newNicknameMsg").text(msg);
        }
    }
});

function addressAPI2() {
    new daum.Postcode({
        oncomplete: function (data) {
            var roadAddr = data.roadAddress;
            var extraRoadAddr = '';
            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                extraRoadAddr += data.bname;
            }
            if (data.buildingName !== '' && data.apartment === 'Y') {
                extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            if (extraRoadAddr !== '') {
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("address1").value = roadAddr;
            document.getElementById("address2").focus();
            if (roadAddr !== '') {
                document.getElementById("address3").value = extraRoadAddr;
            } else {
                document.getElementById("address3").value = '';
            }
        }
    }).open();
};

$("#confirmPwd").keyup(function () {
    var memberPwd = $("#confirmPwd").val();
    $.ajax({
        url: "deleteMemberPwdCheck.me",
        data: {
            memberPwd: memberPwd
        },
        success: function (result) {
            if (result == 1) {
                var msg = "비밀번호 확인 완료";
                $("#confirmPwdMsg").css('color', 'green');
                $("#confirmPwdMsg").text(msg);
                $("#submitLeaveSixmusic").attr("disabled", false);
            };
            if (result != 1) {
                var msg = "비밀번호 입력";
                $("#confirmPwdMsg").css('color', 'black');
                $("#confirmPwdMsg").text(msg);
                $("#submitLeaveSixmusic").attr("disabled", true);
            }
        },
        error: function () {
            console.log("통신 실패 ㅜㅜ");
        }
    });
});