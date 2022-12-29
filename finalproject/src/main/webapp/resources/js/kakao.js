//<script src="https://developers.kakao.com/sdk/js/kakao.js"></script> 

//SIXMUSIC JavaScript 키
const javaScriptKey = '626160912f25bfe80a223c04d175085d';

window.Kakao.init(javaScriptKey);

//카카오 계정 로그인
function kakaoLogin() {
    window.Kakao.Auth.login({
        scope: 'account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
        success: function () {
            window.Kakao.API.request({ // 사용자 정보 가져오기 
                url: '/v2/user/me',
                success: (res) => {
                    const kakao_account = res.kakao_account;
                    console.log(kakao_account.email); //사용자 정보
                    let email = kakao_account.email;
                    location.href='kakaoLogin.me?id='+email+'&type=2';
                }
            });
            location.href='/sixmusicTest1' //리다이렉트 되는 코드
        },
        fail: function (error) {
            console.log(error);
        }
    });
}

//카카오 계정 로그아웃
function kakaoLogout() {
    if (!Kakao.Auth.getAccessToken()) {
        console.log('Not logged in.');
        return;
    }
    Kakao.Auth.logout(function (response) {
        alert(response + ' logout');
        location.href='member/logout.me';
    });
};

//카카오 계정 탈퇴
function secession() {
    Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
            console.log(response);
            //callback(); //연결끊기(탈퇴)성공시 서버에서 처리할 함수
            // window.location.href='/sixmusicTest1'
        },
        fail: function (error) {
            console.log('탈퇴 미완료')
            console.log(error);
        },
    });
};