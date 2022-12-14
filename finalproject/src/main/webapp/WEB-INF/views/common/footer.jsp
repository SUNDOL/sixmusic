<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>FOOTER</title>
</head>

<body>

  <!-- Footer -->
  <div class="container-fluid">
    <footer class="py-3 my-4 bg-light">
      <ul class="nav justify-content-center border-bottom pb-3 mb-3">
        <li class="nav-item"><a href="/sixmusic" class="nav-link px-2 text-muted">Home</a></li>
        <li class="nav-item"><a href="#" class="nav-link px-2 text-muted" data-bs-toggle="modal" data-bs-target="#privacyModal">Privacy</a></li>
        <li class="nav-item"><a href="#" class="nav-link px-2 text-muted" data-bs-toggle="modal" data-bs-target="#termsOfServiceModal">Terms of Service</a></li>
        <li class="nav-item"><a href="#" class="nav-link px-2 text-muted" data-bs-toggle="modal" data-bs-target="#aboutUsModal">About Us</a></li>
      	<c:if test="${not empty loginUser}">  
        	<li class="nav-item"><a href="#" class="nav-link px-2 text-muted" data-bs-toggle="modal" data-bs-target="#customerServices">Customer Services</a></li>
      	</c:if>
      	<c:if test="${empty loginUser}">
      		<li class="nav-item"><a href="#" class="nav-link px-2 text-muted" onclick="loginRequired();">Customer Services</a></li>
      	</c:if>
      </ul>
      <h2 class="text-center"><b><i class="bi bi-music-note-beamed"></i>SIXMUSIC</b></h2>
      <p class="text-center text-muted">&copy; 2022 SIXMUSIC LLC.</p>
    </footer>
  </div>

  <!-- Modal: Privacy -->
  <div class="modal fade" id="privacyModal" tabindex="-1" aria-labelledby="privacyModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="privacyModalLabel"><b>PRIVACY</b></h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div style="white-space:pre-wrap;">
???????????? ?????????????????? ('localhost:8887/sixmusic'?????? 'SIXMUSIC')???(???) ??????????????? ???????????? ???30?????? ?????? ??????????????? ??????????????? ???????????? ?????? ????????? ????????? ???????????? ???????????? ????????? ??? ????????? ?????? ????????? ????????? ?????? ???????????? ??????????????? ???????????????????????.

??? ??? ??????????????????????????? 2022??? 1??? 1?????? ???????????????.

???1???(??????????????? ?????? ??????)
???????????? ?????????????????? ('localhost:8887/sixmusic'?????? 'SIXMUSIC')???(???) ????????? ????????? ????????? ??????????????? ???????????????. ???????????? ?????? ??????????????? ????????? ?????? ????????? ???????????? ???????????? ????????? ?????? ????????? ???????????? ???????????? ??????????????? ???????????? ???18?????? ?????? ????????? ????????? ?????? ??? ????????? ????????? ????????? ???????????????.

1. ???????????? ???????????? ??? ??????
?????? ???????????? ??????, ????????? ????????? ????????? ?????? ?????? ??????????????, ???????????? ??????????????, ????????? ???????????? ??????, ?????? ?????????????? ???????????? ??????????????? ???????????????.
2. ?????? ?????? ????????? ??????
????????????, ????????? ??????, ???????????????????? ??????, ????????? ??????, ????????????, ??????????????????????? ???????????? ??????????????? ???????????????.

???2???(??????????????? ?????? ??? ?????? ??????)
??? ???????????? ?????????????????? ???(???) ????????? ?????? ???????????? ???????????????????? ?????? ????????????????????? ??????????????? ?????? ?????? ???????????? ???????????? ???????????????????? ????????? ??????????????? ???????????????????????.
??? ????????? ???????????? ?????? ??? ?????? ????????? ????????? ????????????.

1. ???????????? ???????????? ??? ??????
???????????? ???????????? ??? ????????? ????????? ??????????????? ??????.????????? ?????? ?????????????????? 1????????? ??? ??????????????? ????????? ??????.???????????????.
???????????? : ??????????????? ??????/??????/????????? ??????
???????????? : 1)??????????????? ??????/?????? ??? ?????? ?????? ?????? ?????? : 3???
2) ???????????? ?????? ?????? ??????????????? ?????? ?????? : 3???
3) ???????????? ??? ?????? ?????? ????????? ?????? ?????? : 5???
4) ?????? ?????? ???????????? ?????? ?????? ?????? : 5???
2.?????? ?????? ????????? ??????
?????? ?????? ????????? ????????? ????????? ??????????????? ??????.????????? ?????? ?????????????????? 1????????? ??? ??????????????? ????????? ??????.???????????????.
???????????? : ????????? ?????? ?????? ????????? ????????? ??????
???????????? : 1)??????????????? ??????/?????? ??? ?????? ?????? ?????? ?????? : 3???
2) ???????????? ?????? ?????? ??????????????? ?????? ?????? : 3???
3) ???????????? ??? ?????? ?????? ????????? ?????? ?????? : 5???
4) ?????? ?????? ???????????? ?????? ?????? ?????? : 5???
1)??????????????? ??????/?????? ??? ?????? ?????? ?????? ?????? : 3???
2) ???????????? ?????? ?????? ??????????????? ?????? ?????? : 3???
3) ???????????? ??? ?????? ?????? ????????? ?????? ?????? : 5???
4) ?????? ?????? ???????????? ?????? ?????? ?????? : 5???

???3???(???????????? ??????????????? ??????)
??? ???????????? ?????????????????? ???(???) ????????? ???????????? ????????? ???????????? ????????????.

1 ???????????? ???????????? ??? ??????
???????????? : ?????????, ??????????????????, ?????????ID, ????????????
???????????? :
2 ?????? ?????? ????????? ??????
???????????? : ?????????, ??????????????????, ?????????ID, ????????????
???????????? :

???4???(??????????????? ???????????? ??? ????????????)
??? ???????????? ?????????????????? ???(???) ???????????? ??????????????? ??????, ???????????? ?????? ??? ??????????????? ??????????????? ????????? ????????? ???????????? ?????? ??????????????? ???????????????.
??? ????????????????????? ???????????? ???????????? ??????????????? ??????????????? ??????????????? ????????????????????? ???????????? ?????? ????????? ?????? ??????????????? ?????? ??????????????? ?????? ????????????, ?????? ??????????????? ????????? ??????????????????(DB)??? ???????????? ??????????????? ???????????? ???????????????.

1. ?????? ?????? :
2. ???????????? ???????????? ?????? : ????????????, ????????????

??? ???????????? ????????? ?????? ??? ????????? ????????? ????????????.

1. ????????????
???????????? ?????????????????? ???(???) ?????? ????????? ????????? ??????????????? ????????????, ???????????? ?????????????????? ??? ???????????? ?????????????????? ????????? ?????? ??????????????? ???????????????.
2. ????????????
????????? ?????? ????????? ????????? ????????? ????????? ??? ?????? ????????? ????????? ???????????????.
????????? ????????? ??????????????? ???????????? ??????????????? ????????? ????????? ???????????????

???5???(??????????????? ?????????????????? ?????????????? ??? ??? ??????????????? ?????? ??????)
??? ??????????????? ???????????? ????????????????????? ?????? ???????????? ???????????? ???????????????????????????????????? ?????? ?????? ????????? ????????? ??? ????????????.
??? ???1?????? ?????? ?????? ????????????????????? ????????????????????? ?????? ??????????????? ???????????? ????????? ???41??????1?????? ?????? ??????, ????????????, ????????????(FAX) ?????? ????????? ?????? ??? ????????? ???????????? ?????????????????????(???) ?????? ?????? ?????? ?????? ?????????????????????.
??? ???1?????? ?????? ?????? ????????? ??????????????? ????????????????????? ????????? ?????? ??? ??? ???????????? ????????? ?????? ??? ????????????.??? ?????? ??????????????? ?????? ????????? ?????? ??????(???2020-7???)??? ?????? ???11??? ????????? ?????? ???????????? ??????????????? ?????????.
??? ???????????? ?????? ??? ???????????? ????????? ??????????????? ???????????? ???35??? ???4???, ???37??? ???2?????? ????????? ??????????????? ????????? ?????? ??? ??? ????????????.
??? ??????????????? ?????? ??? ?????? ????????? ?????? ???????????? ??? ??????????????? ?????? ???????????? ???????????? ?????? ???????????? ??? ????????? ????????? ??? ????????????.
??? ???????????? ?????????????????????(???) ???????????? ????????? ?????? ????????? ??????, ????????????????? ??????, ??????????????? ?????? ??? ?????? ??? ????????? ??? ?????? ??????????????? ????????? ?????????????????? ???????????????.

???6???(??????????????? ????????? ??????????????? ?????? ??????)
???????????? ?????????????????? ???(???) ??????????????? ????????? ????????? ?????? ????????? ?????? ????????? ????????? ????????????.

1. ???????????? ?????? ?????? ??????
???????????? ?????? ?????? ????????? ????????? ?????? ?????????(?????? 1???)?????? ?????? ????????? ???????????? ????????????.
2. ???????????? ?????? ????????? ????????? ??? ??????
??????????????? ???????????? ????????? ???????????? ???????????? ???????????? ????????? ?????? ??????????????? ???????????? ????????? ???????????? ????????????.
3. ????????????????????? ?????? ??? ??????
??????????????? ????????? ????????? ????????? ????????????????????? ???????????? ???????????? ????????????.
4. ?????? ?????? ????????? ????????? ??????
???????????? ?????????????????? ('SIXMUSIC') ???/??? ???????????? ????????? ???????????? ?????? ?????? ???????????? ?????? ??? ????????? ?????? ????????? ????????????????????? ???????????? ???????????? ????????????????? ?????? ??????????????? ????????? ????????? ????????? ???????????? ???????????? ?????????/??????????????? ?????? ??? ???????????? ????????????.
5. ??????????????? ?????????
???????????? ??????????????? ??????????????? ????????? ?????? ?????? ??? ???????????? ??????, ???????????? ??? ??? ????????? ????????? ???????????? ?????? ??? ?????? ???????????? ????????? ????????? ?????? ?????? ????????? ???????????? ?????? ?????? ??????????????? ???????????? ????????????.
6. ??????????????? ?????? ??? ????????? ??????
?????????????????????????????? ????????? ????????? ?????? 1??? ?????? ??????, ???????????? ?????????,??????, 5?????? ????????? ??????????????? ????????? ??????????????? ???????????????, ?????????????????? ?????? ??????????????? ???????????? ???????????? 2????????? ??????, ???????????? ????????????.
??????, ??????????????? ????????? ??? ??????, ???????????? ????????? ??????????????? ???????????? ????????????.
7. ??????????????? ?????? ?????? ??????
??????????????? ???????????? ?????????????????????????????? ?????? ??????????????? ??????,??????,????????? ????????? ??????????????? ?????? ??????????????? ????????? ????????? ????????? ?????? ????????? ???????????????????????? ???????????? ?????????????????? ?????? ????????? ???????????? ????????????.
8. ??????????????? ?????? ???????????? ??????
??????????????? ????????? ??????, ?????????????????? ?????? ??????????????? ?????? ????????? ????????? ???????????? ????????????.
9. ??????????????? ?????? ?????? ??????
??????????????? ???????????? ?????? ????????? ?????? ????????? ????????? ?????? ?????? ?????? ???????????? ????????? ??????, ???????????? ????????????.

???7???(??????????????? ???????????? ???????????? ????????? ?????????????? ??? ??? ????????? ?????? ??????)
???????????? ?????????????????? ???(???) ??????????????? ??????????????? ???????????? ????????? ???????????? ?????????(cookie)?????? ???????????? ????????????.

???8??? (???????????? ?????????????????? ?????? ??????)
??? ???????????? ?????????????????? ???(???) ???????????? ????????? ?????? ????????? ???????????? ????????????, ???????????? ????????? ????????? ??????????????? ???????????? ??? ???????????? ?????? ????????? ????????? ?????? ???????????? ?????????????????? ???????????? ????????????.

??? ???????????? ???????????????
?????? :?????????
?????? :??????
?????? :??????
????????? :010-8468-1877, jhong75@asu.edu
??? ???????????? ?????? ??????????????? ???????????????.

??? ????????????????????? ???????????? ?????????????????? ??? ?????????(?????? ??????)??? ?????????????????? ????????? ?????? ???????????? ?????? ?????? ??????, ????????????, ???????????? ?????? ?????? ????????? ???????????? ??????????????? ??? ??????????????? ???????????? ??? ????????????. ???????????? ?????????????????? ???(???) ??????????????? ????????? ?????? ?????? ?????? ?????? ??? ??????????????? ????????????.

???9???(??????????????? ??????????????? ???????????????????? ??????)
??????????????? ??????????????? ???????????? ???35?????? ?????? ??????????????? ?????? ????????? ????????? ????????? ??? ??? ????????????.
???????????? ?????????????????? ???(???) ??????????????? ???????????? ??????????????? ???????????? ??????????????? ?????????????????????.

??? ???????????? ???????????? ??????????????
?????? :?????????
?????? :??????
?????? :??????
????????? :010-8468-1877, jhong75@asu.edu

???10???(??????????????? ??????????????? ?????? ????????????)
??????????????? ????????????????????? ?????? ????????? ?????? ????????? ?????????????????????????????????, ???????????????????????? ?????????????????????????????? ?????? ?????????????????? ?????? ?????? ????????? ??? ????????????. ??? ?????? ?????? ????????????????????? ??????, ????????? ???????????? ????????? ????????? ??????????????? ????????????.

1. ????????????????????????????????? : (????????????) 1833-6972 (www.kopico.go.kr)
2. ?????????????????????????????? : (????????????) 118 (privacy.kisa.or.kr)
3. ???????????? : (????????????) 1301 (www.spo.go.kr)
4. ????????? : (????????????) 182 (ecrm.cyber.go.kr)

??????????????????????????????35???(??????????????? ??????), ???36???(??????????????? ??????????????), ???37???(??????????????? ???????????? ???)??? ????????? ?????? ????????? ??? ?????? ??????????????? ?????? ?????? ?????? ?????? ???????????? ????????? ?????? ?????? ????????? ????????? ?????? ?????? ?????????????????? ????????? ?????? ?????? ??????????????? ????????? ??? ????????????.

??? ??????????????? ?????? ????????? ????????? ???????????????????????????(www.simpan.go.kr) ??????????????? ??????????????? ????????????.
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-outline-dark" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal: Terms of Service -->
  <div class="modal fade" id="termsOfServiceModal" tabindex="-1" aria-labelledby="termsOfServiceModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="termsOfServiceModalLabel"><b>TERMS OF SERVICE</b></h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div style="white-space:pre-wrap;">
Copyright (c) 2022 SIXMUSIC Limited Liability Company<br>
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:<br>
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.<br>
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-outline-dark" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal: About Us -->
  <div class="modal fade" id="aboutUsModal" tabindex="-1" aria-labelledby="aboutUsModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="aboutUsModalLabel"><b>ABOUT US</b></h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-6 ms-auto">
                <div class="row" align="center">
                  <h2><b><i class="bi bi-music-note-beamed"></i>SIXMUSIC</b></h2>
                  <p><b>???????????? ??????????????????</b></p>
                  <small>SIXMUSIC Limited Liability Company</small>
                  <small>??????????????? ???????????? ?????????2??? 57 ???????????? 19, 20??? (07212)</small>
                </div>
                <hr>
                <div class="row" align="center">
                  <br>
                  <h4><b>6???</b></h4>
                  <small>
                    ????????? | ????????? | ?????????<br>
                    010-3370-3127 | 010-2751-6969 | 010-8468-1877<br>
                    kocarunner1115@gmail.com | dmsejr0814@naver.com | jhong75@asu.edu<br>
                    KH??????????????? ??????-E ????????? ????????????
                  </small>
                </div>
                <br>
                <div class="row">
                  <ul class="nav justify-content-center mb-3">
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-muted"><b><i class="bi bi-twitter"></i></b></a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-muted"><b><i class="bi bi-facebook"></i></b></a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-muted"><b><i class="bi bi-instagram"></i></b></a></li>
                  </ul>
                </div>
              </div>
              <div class="col-md-6 ms-auto">
                <div id="daumRoughmapContainer1670820058910" class="root_daum_roughmap root_daum_roughmap_landing" "mapWidth" : "640"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Modal: Customer Services -->
  <div class="modal fade" id="customerServices" tabindex="-1" aria-labelledby="customerServicesLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg modal-fullscreen-sm-down">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5 fw-bold" id="customerServicesLabel">Customer Services</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <form action="addToQuestion.qa" method="post" enctype="multipart/form-data">
      	<div class="mb-3">
      		<div class="col">
      			<label for="qna-topic" class="form-label fw-bold">Topic (required)</label>
      			<select name="questionCategory" class="form-select">
      				<option value="1" selected>????????????</option>
      				<option value="2">????????????</option>
      				<option value="3">????????????</option>
      				<option value="4">????????????</option>
      				<option value="5">????????????</option>
      			</select>
      		</div>
      		<br>
      		<div class="col">
      			<label for="qna-title" class="form-label fw-bold">Title (required, ?????? 30???)</label>
      			<input type="text" name="questionTitle" id="qna-title" class="form-control" maxlength="30" required>
      			<input type="hidden" name="memberNo" id="qna-member" value="${loginUser.memberNo}">
      		</div>
      		<br>
      		<div class="col">
      			<label for="qna-content" class="form-label fw-bold">Content (required)</label>
      			<textarea name=questionContent id="qna-content" class="form-control" rows="10" style="resize:none;" required></textarea>
      		</div>
      		<br>
      		<div class="col">
      			<label for="qna-attachment" class="form-label fw-bold">Attachments (optional)</label>
      			<input type="file" name="image" id="qna-attachment" class="form-control">
      		</div>
      	 </div>
      	 	<br>
	      	<div class="d-flex justify-content-end">
		        <button type="submit" class="btn btn-dark">Submit</button>
		        &nbsp;
	    	    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
	      	<br>
	      	</div>
      </form>
      	</div>
    </div>
  </div>
</div>

</body>
<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1670820058910",
		"key" : "2cxyp",
	}).render();
</script>

</html>