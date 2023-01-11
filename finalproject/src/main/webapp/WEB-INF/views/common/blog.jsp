<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BLOG</title>
</head>

<jsp:include page="../common/header.jsp"/>
<body>
<div class="bg-light rounded-3">
	<br><br>
      <div class="container-fluid py-5 text-white" style="background-image: url('resources/image/jumbotron/jumbotron-myaccount.jpg');">
        <h1 class="display-5 fw-bold">BLOG</h1>
        <p class="col-md-8 fs-4">작업일정표</p>
      </div>
    </div>
<div class="container">
<br>
<pre>
[6조] 2022-12-09 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- Spring 개발환경 설정 (pom.xml, root-context 등) github로 조원들에게 공유
- github 사용법 숙지 (upload, branches, approval, )
- front-end 제작: header (navbar), footer
- database 제작: ERDCloud 틀 잘 잡아놓기
- api(카카오 로그인, 주소 api) 숙지

2. 오늘의 달성내역
- Spring 개발환경 설정 (pom.xml, root-context 등) github로 조원들에게 공유 완료
- front-end 제작: header (navbar): 90% 완료 / footer: 레퍼런스 디자인 참조, 작업 시작 전
- database 제작: ERDCloud 틀 잘 잡아놓기

3. 목표 미달성 사유
- github 사용법 미달 (병합 및 업로드 데이터 불러오기)
- front-end 제작: header (navbar): 
“카카오 로그인” 버튼 등의 디자인이 로그인 Modal의 전반적 분위기에 잘 어울리지 않아 오래 걸림 

4. 내일의 목표
- github 사용법 숙지
- api(email 인증) 숙지
- front-end 제작: header (navbar), footer 구현
- database 제작: 제품 및 리뷰 등 기본적인 데이터 등록

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-12-12 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- github 사용법 숙지
- front-end 제작: header (navbar) 마무리, footer
- database 제작: ERDCloud 수정작업, 기본 데이터 구성
- api (카카오로 로그인, 카카오페이 결제 api) 학습 
- 개발환경 통일: (Bootstrap v5.2, jQuery 3.6.1 (Google CDN))

2. 오늘의 달성내역
- 개발환경 통일: (Bootstrap v5.2, jQuery 3.6.1 (Google CDN))
- front-end 제작: header (navbar) 마무리, footer (99% 완성)
- api (카카오 로그인, 카카오페이 결제, 카카오맵 api)
- database 제작: ERDCloud 수정작업, 기본 데이터 구성 (지속적 수정 예정)

3. 목표 미달성 사유
- github 사용법 숙지 (아직 본격적인 back-end 개발 단계가 아니라 후순위로 미룸)
- front-end 제작: footer (“contact”에 “메시지 보내기” api 사용 고려 중)
- database 제작: ERDCloud 수정작업 (진행중, 개발 도중 지속적 수정 예정)

4. 내일의 목표
- front-end 제작: 상품 목록 페이지
- database 제작: ERDCloud 수정작업, 기본 데이터 구성
- api (카카오페이 결제 api) + 추가적으로 필요한 api 사용법 학습
- github 사용법 숙지

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-12-13 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- github 사용법 숙지
- front-end 제작: 상품 목록 페이지
- communities, announcements - 데이터베이스 설계
- 카카오 로그인: 서버 - 데이터베이스와 연동 (테스트)

2. 오늘의 달성내역
- github 사용법 숙지 (pull request 드디어 성공)
- front-end 제작: 상품 목록 페이지 (75%), 상품 상세 목록 페이지 (50%)
(페이지를 따로 만들지 않고 modal, offcanvas기능을 응용하여 한 페이지에 구현 예정)
- communities, announcements - 데이터베이스 설계 (구상단계)
- 카카오 로그인: 서버 - 데이터베이스 연동 (완료)

3. 목표 미달성 사유
- github 사용법 숙지 (새로운 main pull 해오는 것)
- front-end 제작: 상품 목록 페이지에 cart, filter(정렬 기준) 등 추가 예정

4. 내일의 목표
- github 사용법 숙지 (본격적인 back-end 개발 단계에 접어들면 추가 학습 예정)
- front-end 제작: 상품 페이지 디테일 완성
- database 제작: communities, announcements - ERDCloud 설계
- 카카오페이 (가능하다면)

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-12-14 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- github 사용법 숙지
- front-end 제작: 상품 페이지 디테일 완성 (filter, reviews), cart 50% 완료
- back-end 제작: 객체 및 MVC 패턴으로 틀 작성
- database 제작: communities, announcements - ERDCloud 설계

2. 오늘의 달성내역
- github 사용법 숙지 (지속적인 사용법 학습)
- front-end 제작: 상품 페이지 디테일 완성 (filter, reviews), cart 10% 완료
- back-end 제작: 상품 페이지 “filter” 부분과 서버와의 연동 실험 (완료), 카카오페이 (진행중)
- database 제작: communities, announcements (ERDCloud 설계 완료)
- database 수정: 상품가격 (price), 위시리스트 (wishlist) 테이블 추가 및 디테일 수정

3. 목표 미달성 사유
- front-end 제작: cart
(front-end 담당자의 건강 이상으로 빠르게 완성 못 함)
- back-end 제작: 객체 및 MVC 패턴으로 틀 작성
(아직 본격적인 back-end 단계가 아님, front-end완성 이후 빠르게 진행할 예정)
- database 제작 및 수정:
(ERDCloud 담당자와 다른 조원들과의 소통이 필요한 부분은 미완성으로 남겨 둠)

4. 내일의 목표
- github 사용법 숙지
- front-end 제작: cart (50%), 회원가입 페이지
- back-end 제작: database의 변경에 맞춰 객체 및 MVC 패턴 수정 
- database 제작 및 수정: communities, announcements, 추가적인 변경 사항 찾아 수정

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-12-15 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- github 사용법 숙지
- front-end 제작: cart (50%), 회원가입 페이지 (10%)
- back-end 제작: database의 변경에 맞춰 객체 및 MVC 패턴 수정
- database 제작 및 수정: communities, announcements 등 추가 변경 사항 수정

2. 오늘의 달성내역
- github 사용법 숙지
- front-end 제작: cart (100%), 회원가입 페이지 (10%)
- back-end 제작: 카카오페이 결제 mapper 완료, database 수정 및 변경

3. 목표 미달성 사유
- 데이터 미확보로 인한 구현의 어려움
(본격적인 데이터 (더미데이터 등) 작업은 프로젝트 3주 - 4주차 작업 예정)
- 모든 조원들의 컨디션 저하 (위경련, 수면부족 등) 우려

4. 내일의 목표
- github 사용법 숙지
- front-end 제작:회원가입 페이지 (완성), My Account 페이지
- back-end 제작: database의 변경에 맞춰 객체 및 MVC 패턴 수정
- database 제작 및 수정: communities, announcements 등 추가 변경 사항 수정
- 기타: 각자의 건강에 조금만 더 신경쓰기

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-12-16 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- github 사용법 숙지
- front-end 제작:회원가입 페이지 (완성), My Account 페이지
- back-end 제작: database의 변경에 맞춰 객체 및 MVC 패턴 수정
- database 제작 및 수정: communities, announcements 등 추가 변경 사항 수정

2. 오늘의 달성내역
- github 사용법 숙지
- front-end 제작: 회원가입 페이지 (80%), My Account 페이지 (50%)
- back-end 제작: filter, cart, wishlist 관련 로직 완성, database 변경 및 수정
- database 제작 및 수정: communities, announcements 등 추가 변경 사항 수정

3. 목표 미달성 사유
- front-end 제작: validation 과정에서 더 나은 view를 찾지 못함
(더 보기 좋게 만드는데 시간이 오래 소요됨)

4. 내일의 목표
- github 사용법 학습
- front-end 제작: 회원가입 페이지 (완성), My Account 페이지 (75%)
- back-end 제작: 로그인, 회원가입 구현
- database 제작 및 수정: member 관련 데이터, communities, announcements 완성

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-12-19 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- github 사용법 학습
- front-end 제작: 회원가입 페이지 (완성) 및 back-end와 연결
- back-end 제작: 제작해놓은 front-end 페이지와 back-end 연결
- database 제작 및 수정: 전체적인 테이블 수정 및 데이터 추가

2. 오늘의 달성내역
- github 사용법 학습 (다른 branch 만들고 push하기)
- front-end 제작: 회원가입 페이지 (완성) 및 back-end와 연결
- back-end 제작: 필터 js 및 data mapper 수정
- database : 상품 10개에 데이터 작성 (상품 이미지 데이터정보 제외)
- 상품10개에 대한 이미지 데이터 확보

3. 목표 미달성 사유
- front-end: 회원가입 페이지에 필요한 javascript구문 (정규표현식 등)
(오후 스케줄에 완수할 예정이었으나, 시험 시간이 예상보다 길어져 못 다함)
-back-end 부분에서 캐시메모리로 인한 오류로 작성시간 증가

4. 내일의 목표
- front-end: 회원가입 페이지에 필요한 javascript구문 작성 완료 및 back-end와 연결
- 필터링 객체 작성 및 검색 MVC작성

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-12-20 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- front-end: 회원가입 페이지에 필요한 javascript구문 작성 완료 및 back-end와 연결
- back-end: 필터링 객체 작성 및 검색 MVC 작성
- front-end와 back-end 연결 (header, footer, main, login/logout)
- database: 필요시 지속적 수정

2. 오늘의 달성내역
- front-end: 회원가입 페이지에 필요한 javascript구문 작성 완료 및 back-end와 연결
- back-end: 필터링 객체 작성 및 검색 MVC 작성
- front-end와 back-end 연결 (header, footer, main, login/logout)
- database: 필요시 지속적 수정

3. 목표 미달성 사유
- 없습니다

4. 내일의 목표
- front-end: 회원가입, product 목록(10%) back-end와 연결하기
- back-end: 회원가입, product 목록(10%) front-end와 연결하기
- database: 필요시 지속적 수정

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-12-21 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- front-end: 회원가입, product 목록 back-end와 연결하기
- back-end: 회원가입, product 목록 front-end와 연결하기
- database: 필요시 지속적 수정

2. 오늘의 달성내역
- front-end: 회원가입 back-end와 연결
- back-end: 회원가입 front-end와 연결
- database: 회원 (member) table 대대적 수정
- product, filter: 목록 불러오기 등 javascript 작업

3. 목표 미달성 사유
- front-end: product 목록 back-end와 연결하기
- back-end: product 목록 front-end와 연결하기
(사유: github 사용에 익숙하지 않아 (ex) .classpath conflict 등) 시간을 많이 뺏음)

4. 내일의 목표
- front-end: product 목록 back-end와 연결하기
- back-end: product 목록 front-end와 연결하기

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-12-22 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- back-end: product 목록 front-end와 연결하기
- 필터 MVC 재설계 및 구현
- 데이터 베이스 
- 데이터베이스 데이터 추가
- front-end: product 목록 back-end와 연결하기
- product 목록 출력

2. 오늘의 달성내역
- front-end: product 목록 back-end와 연결
- back-end: product 목록 front-end와 연결
- database: 상품 데이터 대대적 추가
- product, filter: 목록 불러오기 등 javascript 작업

3. 목표 미달성 사유
- 필터 MVC 반영한 view 수정: product 목록 불러오는 과정이 생각 외로 오래 걸림

4. 내일의 목표
- product 상세보기, cart, wishlist

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-12-23 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- 필터 MVC 재구성 제품 리스트 구현 완료
- 제품 상세보기 구현 완료

2. 오늘의 달성내역
- front-end: product 목록, 상세보기 (40%) back-end와 연결
- back-end: product 목록, 상세보기 (40%) front-end와 연결
- product, filter: 목록 불러오기 등 javascript 작업

3. 목표 미달성 사유
- front-end: owl carousel (외부 plugin) 연결 시 오류 해결하느라 상당한 시간 소요
- back-end: a tag의 text값을 불러오지 못하였음

4. 내일의 목표
- 리뷰, 즐겨찾기 및 장바구니
- database: 상품 데이터 대대적 추가

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-12-26 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- 리뷰, 즐겨찾기 및 장바구니
- database: 상품 데이터 대대적 추가

2. 오늘의 달성내역
- 리뷰, 즐겨찾기 및 장바구니
- database: 상품 데이터 추가

3. 목표 미달성 사유
- 상품 데이터, 리뷰, 즐겨찾기 등 더미데이터를 더 많이 추가해야 할 것 같음

4. 내일의 목표
- 즐겨찾기 및 장바구니 기능 완성
- database: 상품 데이터 대대적 추가

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-12-27 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- 즐겨찾기 및 장바구니 기능 완성
- database: 상품 데이터 대대적 추가

2. 오늘의 달성내역
- 장바구니 기능 완료
- 즐겨찾기 mvc 패턴 구현완료
- 결제 페이지 mvc 구현완료

3. 목표 미달성 사유
- 다중 delete 문이 오라클 업데이트 이후로 사라짐
- 환자 1

4. 내일의 목표
-  즐겨찾기, 결제 완료
- database: 상품 데이터 대대적 추가

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-12-28 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
-  즐겨찾기, 결제 완료
- database: 상품 데이터 대대적 추가

2. 오늘의 달성내역
- front-end: wishlist (즐겨찾기), confirmation (결제) view, my account (마이페이지) view 완성
- back-end: confirmation (결제) 전 cart에 담긴 제품 정보 불러오기 완료
- database : 리뷰 생성, 주문내역 조회, 회원정보 수정 sql구문 작성 완료

3. 목표 미달성 사유
- 주문 내역 출력
- 회원 정보 수정
- 간단한 문법오류로 시간지연

4. 내일의 목표

- 주문 내역 출력
- 회원 정보 수정
—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-12-29 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- 주문 내역 출력
- 회원 정보 수정
-리뷰 생성
2. 오늘의 달성내역

3. 목표 미달성 사유
- 주문 내역 출력
- 회원 정보 수정
- 간단한 문법오류로 시간지연

4. 내일의 목표

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-12-30 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- 주문 내역 출력
- 회원 정보 수정
- 결제 포인트 및 등급 추가

2. 오늘의 달성내역
- 주문 내역 출력
- 회원 정보 수정 (My Account 완성)
- 결제 포인트 및 등급 추가

3. 목표 미달성 사유
- 결제내역 에서 리뷰작성 모달 미작성

4. 내일의 목표
- My Order History 
- 리뷰작성
- 리뷰삭제

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-01-02 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- My Order History 
- 리뷰작성
- 리뷰삭제

2. 오늘의 달성내역
- 어드민, Q&A MVC 일부 완성
- My Order History 
- 리뷰작성/삭제

3. 목표 미달성 사유
- 예상보다 오래 걸림

4. 내일의 목표
- 어드민, Q&A 완성

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-01-04 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- 어드민, Q&A 완성

2. 오늘의 달성내역
- My Order History 완성 (My Account 포함 마이페이지 기능 70% 완성)
- Administrator front-end 20% 완성

3. 목표 미달성 사유
- My Order History 리뷰 수정, 삭제 작업 중 시간이 오래 소요됨

4. 내일의 목표
- Administrator front-end 50% 완성
- Administrator back-end 50% 완성
- Customer Services (Q&A) 작업 시작

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-01-06 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- Administrator (Product 추가, 수정, 삭제)
- Customer Service (Q&A - 관리자) 완성
- Communities/Announcement 작업 시작
- Front-end 손 보기 (Carousel, Jumbotron)

2. 오늘의 달성내역
- Front-end 손 보기 (Carousel, Jumbotron)
- Administrator (Product 추가)
- Announcement (50%)

3. 목표 미달성 사유
- Administrator (Product 수정, 삭제):JavaScript, Front-end와의 연동 문제 미해결
- Customer Service (Q&A - 관리자): Product 수정, 삭제 완료 후 바로 진행 예정
(간단한 문제, 예상 소요 시간: 30분?)
- Communities/Announcement: 

4. 내일의 목표
- Administrator 완성
- Communities/Announcement 중 Announcement
- Front-end 손 보기 (‘Owl Carousel’ for Top Sellers & New Arrivals)

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-01-09 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- 전은덕:
- 임무 완료
- 홍진휘:
Administrator 완성
Front-end 손 보기 (‘Owl Carousel’ for Top Sellers & New Arrivals)
Database 상품 더미데이터 많이 집어넣기
- 노윤석:
Communities/Announcement 중 Announcement

2. 오늘의 달성내역
- 홍진휘
Administrator 완성
Front-end 손 보기 (Owl Carousel 작업 완료)
Database 상품 더미데이터 많이 집어넣기
- 노윤석
Communities/Announcement 중 Announcement

3. 목표 미달성 사유
- 없습니다. 기능 완료. 웹페이지에 삽입할 데이터베이스 작성 아주 많이 남음.

4. 내일의 목표
- Communities/Announcement 완성 후 합치기
- 버그 등 없는지 지속적 확인
- 데이터베이스 계속 집어넣기

—----------------------------------------------------------------------------------------------------------------------------

[6조] 2022-01-10 (조원: 노윤석, 전은덕, 홍진휘)

1. 오늘의 목표
- 전은덕, 홍진휘: 임무 완료
- 노윤석: Communities/Announcement 완성
- 최종본 합치기
- 더미데이터 최대한 많이 삽입, 발표 준비

2. 오늘의 달성내역
- 최종본 완성
- 더미데이터 100개 삽입 완료

3. 목표 미달성 사유
- 없음

4. 내일의 목표
- 더미데이터 최대한 많이 삽입, 발표 준비
</pre>
</div>

</body>
<jsp:include page="../common/footer.jsp"/>
</html>