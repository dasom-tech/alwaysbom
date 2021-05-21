## 🌷Alwaysbom(새늘봄)
![screencapture-alwaysbom-xyz-2021-05-21-15_04_20](https://user-images.githubusercontent.com/73812196/119093214-646ad000-ba4a-11eb-8cb0-188415bf9724.png)

---
##### ▶️ 개요
- 원하는 꽃을 정기적으로 배송 받을 수 있는 꽃 정기구독 서비스와 꽃다발, 소품 등을 판매하는 꽃 온라인 쇼핑몰 '새늘봄'
- Spring Framework를 이용하여 개발
- GCP를 이용하여 파일 관리 및 배포 
- [👉🏻 클릭해주세요👀 👈🏻](http://alwaysbom.xyz/) 새늘봄 웹 사이트 연결
- 주요 기능 : 회원 관리, 커뮤니티, 상품 판매, 주문, 플라워 클래스 수강 신청, 결제, 매출 분석 등 백 오피스 
- 개발 기간 : 2021.03.11 - 4.13 (1개월)
- 개발 인원 : 6명
- Jira Software를 이용하여 효과적으로 일정 관리

![image](https://user-images.githubusercontent.com/73812196/119099650-15c13400-ba52-11eb-9972-680c1be9621d.png)
![image](https://user-images.githubusercontent.com/73812196/119096374-7babbc80-ba4e-11eb-9cf0-fb7e2dc89bdf.png)
![image](https://user-images.githubusercontent.com/73812196/119097499-c37f1380-ba4f-11eb-8a28-9106380a304e.png)
![image](https://user-images.githubusercontent.com/73812196/119097590-e1e50f00-ba4f-11eb-8866-eae2c708dc0c.png)
![image](https://user-images.githubusercontent.com/73812196/119097659-f9bc9300-ba4f-11eb-9008-70b4d30fed42.png)

---
##### ▶️ 담당 기능
- 새늘봄 홈페이지 : 회원 가입, 로그인, 로그아웃, 아이디 찾기, 비밀번호 찾기, 마이페이지 메인, 포인트 관리, 1:1문의 목록 조회, 회원 정보 수정, 회원 탈퇴, 회원 등급
- 관리자 페이지 : 회원 목록 조회 
---
### 👇 회원 가입(join.jsp)
![screencapture-alwaysbom-xyz-goMemberJoin-2021-05-21-17_34_00](https://user-images.githubusercontent.com/73812196/119108191-e82cb880-ba5a-11eb-850e-0e10dabc0759.png)
![screencapture-alwaysbom-xyz-goMemberJoin-2021-05-21-17_40_56](https://user-images.githubusercontent.com/73812196/119109073-d13a9600-ba5b-11eb-825b-e15ef5ba807b.png)

- 이메일 가입(기본) / 카카오 API를 사용하여 카카오 계정으로 가입하기 구현
---
### 👇 이메일(기본) 회원가입(member_join.jsp)
![screencapture-alwaysbom-xyz-member-join-2021-05-21-17_44_46](https://user-images.githubusercontent.com/73812196/119109800-735a7e00-ba5c-11eb-9217-895f5c05e00a.png)
![screencapture-alwaysbom-xyz-member-join-2021-05-21-17_46_47](https://user-images.githubusercontent.com/73812196/119110124-c7656280-ba5c-11eb-9912-723baa0082f8.png)

- 유효성 검사 및 아이디 중복확인 가능
- input 태그의 type 속성으로 date를 사용하여 생년월일은 달력에서 선택 가능하도록 함
---
### 👇 아이디 찾기(find_id.jsp), 찾은 아이디(found_id.jsp)
<img width="853" alt="아이디찾기세트" src="https://user-images.githubusercontent.com/73812196/119154748-6dc95c00-ba8d-11eb-8497-5812c45706ca.png">

- 가입시 입력한 휴대폰 번호를 입력하면 해당 아이디를 찾아 화면에 나타나도록 구현
- DB에 해당 휴대폰 번호가 없을시 가입한 아이디가 없음 확인되도록 구현
- Controller, Dao, Service
![아이디찾기코드](https://user-images.githubusercontent.com/73812196/119155229-ea5c3a80-ba8d-11eb-9af5-7c2c81bbb7f3.png)
---
### 👇 비밀번호 찾기(find_pw.jsp), 찾은 아이디(found_pw.jsp)
![비밀번호찾기세트](https://user-images.githubusercontent.com/73812196/119156020-c5b49280-ba8e-11eb-90a9-085404022bef.png)

- 아이디(이메일)을 입력하여 비밀번호 찾기 진행시 DB에 아이디가 있는지 확인 후 있으면 랜덤으로 문자열을 생성하여 비밀번호를 업데이트시킨 후 이메일 발송하여 로그인 할 수 있도록 구현
- Controller, Dao, Service
![noname-down](https://user-images.githubusercontent.com/73812196/119160333-1ded9380-ba93-11eb-968f-6725ddfee687.png)
![이메일](https://user-images.githubusercontent.com/73812196/119157188-e16c6880-ba8f-11eb-8066-37c83e68022c.png)

---
### 👇 로그인(login.jsp)
![screencapture-alwaysbom-xyz-login-2021-05-21-17_50_46](https://user-images.githubusercontent.com/73812196/119160488-4d9c9b80-ba93-11eb-8858-7e43a03cae87.png)

---
### 👇 마이페이지 메인(myPage.jsp)
![screencapture-alwaysbom-xyz-myPage-2021-05-21-17_56_58](https://user-images.githubusercontent.com/73812196/119158930-b551e700-ba91-11eb-8f20-dbe8ea5cd0cb.png)

- 상단에 등급, 포인트, 보유 쿠폰 표시
- header와 왼쪽 카테고리는 각 페이지에서도 동일하게 사용하도록 따로 jspf 파일로 만들어두고 각 jsp 페이지에서 include 처리함.

---
### 👇 포인트(member_point.jsp)
![screencapture-alwaysbom-xyz-member-point-2021-05-21-17_58_53](https://user-images.githubusercontent.com/73812196/119159527-4759ef80-ba92-11eb-99e0-a2e8b8f02da1.png)

- 보유 포인트 확인 가능
- 포인트를 적립, 사용으로 구분해 리스트로 나타냄
- 사용하기 버튼을 클릭하면 구분이 사용으로 바뀌면서 포인트 증가, 버튼은 사용완료로 즉시 바뀌면서 disabled 처리(location 객체에 있는 reload() 메소드를 사용하여 클릭시 바로 새로고침)

---
### 👇 회원 정보 수정(member_update.jsp)
![screencapture-alwaysbom-xyz-member-update-2021-05-21-17_59_18](https://user-images.githubusercontent.com/73812196/119161712-9739b600-ba94-11eb-8ae0-e9555e6ac1c9.png)

- 아이디는 readonly 처리하여 수정 못하도록 구현
- 성별도 가입시 그대로 나타내주고 수정 못하도록 처리

---
### 👇 회원 등급(member_grade.jsp)
![screencapture-alwaysbom-xyz-member-grade-2021-05-21-17_58_37](https://user-images.githubusercontent.com/73812196/119162173-0c0cf000-ba95-11eb-80c4-5d0316009022.png)

- 회원 등급에 따라 데이지, 자스민, 무궁화 사진으로 변경됨

---
### 👇 1:1문의(mypage_faq_main.jsp)
![screencapture-alwaysbom-xyz-myPage-faq-main-2021-05-21-17_58_16](https://user-images.githubusercontent.com/73812196/119162926-e2a09400-ba95-11eb-90c7-da035b1e8281.png)

- 본인이 남긴 1:1 문의 리스트 확인 가능
- 답변이 달리면 질문 아래 바로 답변도 보여지도록 구현

---
### 👇 회원 탈퇴(member_delete.jsp)
![screencapture-alwaysbom-xyz-member-delete-2021-05-21-17_59_37](https://user-images.githubusercontent.com/73812196/119163477-678bad80-ba96-11eb-8d57-61074a9a8ad1.png)

- 비밀번호 한 번 더 확인하여 불일치시는 다시 확인하도록 alert 창 띄움
- 회원의 리뷰 등 자료 저장을 위해 탈퇴시 delete처리하지 않고 탈퇴여부만 1로 update처리하여 DB상에는 그대로 두도록 함
- 로그인시 탈퇴 여부까지 확인하여 탈퇴하지 않은 아이디만 로그인 가능하도록 구현

---
### 👇 관리자 페이지 회원 목록 조회(b_memList.jsp)
![screencapture-alwaysbom-xyz-admin-b-memList-2021-05-22-00_45_26](https://user-images.githubusercontent.com/73812196/119164777-b7b73f80-ba97-11eb-96ca-f6e2ef5f7606.png)

- 관리자가 회원 전체 목록을 확인할 수 있도록 구현

---
##### ▶️ 개선 사항(dasomlee 브랜치에 계속 업데이트)
- 불필요한 주석 삭제
- 파일명, 변수명 수정
- 효율적인 코드로 만들기
- 디버깅

---
##### ▶️ 참고 사항
- [👉🏻 프로젝트 발표 영상👀 👈🏻](https://www.youtube.com/watch?v=U9-6jeeVXC4)
