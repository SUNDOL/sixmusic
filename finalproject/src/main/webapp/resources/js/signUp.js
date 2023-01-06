$("#memberId").keyup(function () {
    var memberId = $("#memberId").val();
    console.log(memberId);
    let idRegex = new RegExp(/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/);
    if (memberId == "") {
        var msg = "EMAIL 형식으로 입력";
        $("#memberIdMsg").css('color', 'black');
        $("#memberIdMsg").text(msg);
    }
    if (memberId.match(idRegex)) {
        $.ajax({
            url: "idCheck.me",
            data: {
                memberId: memberId
            },
            success: function (result) {
                if (result == 0) {
                    var msg = "좋은 아이디네요!"
                    $("#memberIdMsg").css('color', 'green');
                    $("#memberIdMsg").text(msg);
                } else {
                    var msg = "사용할 수 없는 아이디입니다."
                    $("#memberIdMsg").css('color', 'red');
                    $("#memberIdMsg").text(msg);
                }
            }
        })
    }
    if (memberId != "" && !memberId.match(idRegex)) {
        var msg = "아이디 형식을 다시 확인해주세요."
        $("#memberIdMsg").css('color', 'red');
        $("#memberIdMsg").text(msg);
    }
});

$("#memberPwd").keyup(function () {
    var memberPwd = $("#memberPwd").val();
    var pwdRegExp = new RegExp(/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/);
    if (memberPwd.match(pwdRegExp)) {
        var msg = "좋은 비밀번호네요!"
        $("#memberPwdMsg").css('color', 'green');
        $("#memberPwdMsg").text(msg);
    }
    if (!memberPwd.match(pwdRegExp)) {
        var msg = "사용할 수 없는 비밀번호입니다."
        $("#memberPwdMsg").css('color', 'red');
        $("#memberPwdMsg").text(msg);
    }
    if (memberPwd == "") {
        var msg = "최소 8자 (1개 문자, 숫자 및 1개의 특수문자 포함)";
        $("#memberPwdMsg").css('color', 'black');
        $("#memberPwdMsg").text(msg);
    }
});

$("#checkPwd").keyup(function () {
    var memberPwd = $("#memberPwd").val();
    var checkPwd = $("#checkPwd").val();
    if (memberPwd == checkPwd) {
        var msg = "비밀번호 확인 완료."
        $("#checkPwdMsg").css('color', 'green');
        $("#checkPwdMsg").text(msg);
    }
    if (memberPwd != checkPwd) {
        var msg = "비밀번호가 일치하지 않습니다.";
        $("#checkPwdMsg").css('color', 'red');
        $("#checkPwdMsg").text(msg);
    }
    if (checkPwd == "") {
        var msg = "비밀번호 확인";
        $("#checkPwdMsg").css('color', 'black');
        $("#checkPwdMsg").text(msg);
    }
});

$("#phone").keyup(function () {
    var phone = $("#phone").val();
    var phoneRegExp = new RegExp(/^[0-9]{11,11}$/);
    if (phone.match(phoneRegExp)) {
        var msg = "전화번호 확인 완료."
        $("#phoneMsg").css('color', 'green');
        $("#phoneMsg").text(msg);
    }
    if (!phone.match(phoneRegExp)) {
        var msg = "전화번호를 다시 확인하세요."
        $("#phoneMsg").css('color', 'red');
        $("#phoneMsg").text(msg);
    }
    if (phone == "") {
        var msg = "ex) 01012345678 형식으로 - 없이 입력";
        $("#phoneMsg").css('color', 'black');
        $("#phoneMsg").text(msg);
    }
});

$("#birthday").keyup(function () {
    var birthday = $("#birthday").val();
    var birthdayRegExp = new RegExp(/^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/);
    if (birthday.match(birthdayRegExp)) {
        var msg = "생년월일 확인 완료."
        $("#birthdayMsg").css('color', 'green');
        $("#birthdayMsg").text(msg);
    }
    if (!birthday.match(birthdayRegExp)) {
        var msg = "생년월일 입력 형식을 다시 확인해주세요."
        $("#birthdayMsg").css('color', 'red');
        $("#birthdayMsg").text(msg);
    }
    if (birthday == "") {
        var msg = "ex) 19870629 형식으로 입력";
        $("#birthdayMsg").css('color', 'black');
        $("#birthdayMsg").text(msg);
    }
});

$("#memberNickname").keyup(function () {
    var memberNickname = $("#memberNickname").val();
    var nicknameRegExp = new RegExp(/^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{3,16}$/);
    if (memberNickname == "") {
        var msg = "3-16자, 영어(소문자)/숫자/한글";
        $("#nicknameMsg").css('color', 'black');
        $("#nicknameMsg").text(msg);
    }
    if (memberNickname != "" && memberNickname.length < 3) {
        var msg = "닉네임은 3글자 이상이어야 합니다.";
        $("#nicknameMsg").css('color', 'red');
        $("#nicknameMsg").text(msg);
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
                        $("#nicknameMsg").css('color', 'green');
                        $("#nicknameMsg").text(msg);
                    } else {
                        var msg = "사용할 수 없는 닉네임입니다."
                        $("#nicknameMsg").css('color', 'red');
                        $("#nicknameMsg").text(msg);
                    }
                },
                error: function () {
                    console.log("통신 실패");
                }
            });
        }
        if (memberNickname != "" && !memberNickname.match(nicknameRegExp)) {
            var msg = "닉네임 형식을 다시 확인해주세요."
            $("#nicknameMsg").css('color', 'red');
            $("#nicknameMsg").text(msg);
        }
    }
});

function addressAPI() {
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

$("#checkTerms").click(function () {
    if ($("#checkTerms").prop('checked')) {
        $("#submit").attr('disabled', false);
    } else {
        $("#submit").attr('disabled', true);
    }
});

$("#reset").click(function () {
    var memberIdMsg = "EMAIL 형식으로 입력";
    var memberPwdMsg = "최소 8자 (1개 문자, 숫자 및 1개의 특수문자 포함)";
    var checkPwdMsg = "비밀번호 확인";
    var nicknameMsg = "3-16자, 영어(소문자)/숫자/한글";
    var phoneMsg = "ex) 01012345678 형식으로 - 없이 입력";
    var birthdayMsg = "ex) 19870629 형식으로 입력";
    $("#memberIdMsg").css('color', 'black');
    $("#memberPwdMsg").css('color', 'black');
    $("#checkPwdMsg").css('color', 'black');
    $("#nicknameMsg").css('color', 'black');
    $("#phoneMsg").css('color', 'black');
    $("#birthdayMsg").css('color', 'black');
    $("#memberIdMsg").text(memberIdMsg);
    $("#memberPwdMsg").text(memberPwdMsg);
    $("#checkPwdMsg").text(checkPwdMsg);
    $("#nicknameMsg").text(nicknameMsg);
    $("#phoneMsg").text(phoneMsg);
    $("#birthdayMsg").text(birthdayMsg);
});
