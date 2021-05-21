## 🌷Alwaysbom(새늘봄)
![screencapture-alwaysbom-xyz-2021-05-21-15_04_20](https://user-images.githubusercontent.com/73812196/119093214-646ad000-ba4a-11eb-8cb0-188415bf9724.png)

---
##### ▶️ 개요
- '새늘봄'은 꽃을 2주나 한달 간격으로 정기 배송을 받는 꽃 정기구독 서비스와 꽃다발, 소품 등을 판매하는 꽃 온라인 쇼핑몰입니다.
- Spring Framework를 이용하여 개발
- GCP를 이용하여 파일 관리 및 배포 
- [👉🏻 클릭해주세요:eyes: 👈🏻](http://alwaysbom.xyz/) 새늘봄 웹 사이트 연결
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
- 새늘봄 홈페이지 : 회원 가입, 로그인, 아이디 찾기, 비밀번호 찾기, 마이페이지 메인, 포인트 관리, 1:1문의 목록 조회, 회원 정보 수정, 회원 탈퇴, 회원 등급
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
![이메일](https://user-images.githubusercontent.com/73812196/119157188-e16c6880-ba8f-11eb-8066-37c83e68022c.png)


