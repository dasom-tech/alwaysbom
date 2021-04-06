<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>회원가입</title>
<%@ include file="../main/import.jspf"%>
<script src="/static/bootstrap-datepicker/bootstrap-datepicker.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
    function joinform_check() {
        var id = document.getElementById("id");
        var pw = document.getElementById("pw");
        var pwCfm = document.getElementById("pwCfm");
        var name = document.getElementById("name");
        var phone = document.getElementById("phone");

        if(!document.join_form.id.value) {
            alert("아이디를 입력해주세요.");
            join_form.id.focus();
            return false;
        }
        if(!document.join_form.pw.value){
            alert("비밀번호를 입력해주세요.");
            return false;
        }
        if(!document.join_form.pwCfm.value){
            alert("비밀번호를 동일하게 다시 입력해주세요.");
            return false;
        }
        //비밀번호와 비밀번호 확인 입력값이 다를때
        if(document.join_form.pw.value != document.join_form.pwCfm.value){
            alert("비밀번호가 일치하지 않습니다. 확인해주세요.");
            return false;
        }
        //비밀번호 영문자+숫자+특수조합(8~25자리 입력) 정규식
        var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

        if (!pwdCheck.test(pw.value)) {
            alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
            pw.focus();
            return false;
        }

        if(!document.join_form.name.value){
            alert("이름을 입력해주세요.");
            return false;
        }
        var reg = /[0,1,6,7,8,9]{3}[-]+[0-9]{4}[-]+[0-9]{4}"+/g; //숫자만 입력하는 정규식

        if (!reg.test(phone.value)) {
            alert("전화번호는 숫자만 사용하여 010-1234-5678 형식으로 입력할 수 있습니다.");
            phone.focus();
            return false;
        }

        if(!document.join_form.phone.value){
            alert("휴대폰 번호를 입력해주세요.");
            return false;
        }
        if(!document.join_form.birth.value){
            alert("생년월일을 입력해주세요.");
            return false;
        }
        if(!document.join_form.gender.value){
            alert("성별을 선택해주세요.");
            return false;
        }
        //입력 값 전송
        document.join_form.submit();
    }

    //아이디 중복 확인
    function id_check(){

    }
</script>
</head>
<style>
    .join-header {
        border-bottom: 1px solid #4D4D4D;
    }
</style>

<body>

<%@ include file="../main/header.jspf" %>
<div class="col-5 mx-auto">
<form role="form" action="/member_join" method="post" name="join_form" onsubmit="return joinform_check()">
    <div class="join-header py-3 mb-4">
        <h5 class="page_title text-center p-2 mt-5 text-secondary m-0">회원가입</h5>
    </div>

    <label class="my-2">이메일 (아이디)</label>
    <div class="d-flex mb-4">
        <input type="text" name="id" value="${kakao_id}" class="col-10 mr-3" maxlength="255" placeholder="6~30자 이메일 형식(특수문자 사용불가)" pattern="[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-z]{2,3}$" />
        <button type="button" class="CheckId col-2" onclick="id_check();">중복 확인</button>
    </div>

    <label class="my-2">비밀번호</label>
    <input type="password" name="pw" id="pw" class="col-12 mb-4" maxlength="255" placeholder="영문자+숫자+특수문자 조합으로 8~25자리"/>

    <label class="my-2">비밀번호 확인</label>
    <input type="password" name="pwCfm" class="col-12 mb-4" maxlength="255" placeholder="비밀번호를 동일하게 한 번 더 입력해주세요."
           autocomplete="off"/>

    <label class="my-2">이름</label>
    <input type="text" name="name" value="${kakao_name}" class="col-12 mb-4" maxlength="255" placeholder="이름을 입력해주세요." />

    <label class="my-2">휴대폰번호 입력</label>
    <input type="text" name="phone" id="phone" class="col-12 mb-4" maxlength="15" minlength="9" placeholder="예) 010-1234-5678"
           title="전화번호를 입력하세요"/>

    <label class="my-2">생년월일</label>
    <input type="date" name="birth" id="birth" class="col-12 mb-4" placeholder="달력에서 선택해주세요."/>

    <label class="my-2">성별</label>
    <div class="d-grid gap-2 d-flex col-12 gender-area">
        <label class="col-6">
            <input type="radio" name="gender" value="female" ${kakao_gender eq 'female' ? "checked" : ""}
                   class="d-none" ${empty kakao_gender ? "" : "disabled"}>
            <span class="col-12 d-block p-3 btn btn-gender">여성</span>
        </label>
        <label class="col-6">
            <input type="radio" name="gender" value="male" ${kakao_gender eq 'male' ? "checked" : ""}
                   class="d-none" ${empty kakao_gender ? "" : "disabled"}>
            <span class="col-12 d-block p-3 btn btn-gender">남성</span>
        </label>
    </div>
    <div class="d-grid col-3 mx-auto">
        <input type="submit" class="btn btn-lg m-4 btn-outline-danger" value="회원가입" />
    </div>
</form>
</div>
<%@ include file="../main/footer.jspf"%>
<script type="text/javascript">
    Kakao.init("a7ed8ce3bc2337bb4281fa9fc4d51ddd");
    Kakao.isInitialized();

    function kakaoLogin() {
        Kakao.Auth.login({
            scope:'profile, account_email, gender, birthday',
            success: function (authObj) {
                window.Kakao.API.request({
                    url:'/v2/user/me',
                    success: res => {
                        const kakao_account = res.kakao_account;
                        console.log(kakao_account);

                        var kakao_id = kakao_account.email;
                        var kakao_name = kakao_account.profile.nickname;
                        var kakao_gender = kakao_account.gender;
                    }
                });
            }
        });
    }
</script>
</body>
</html>
<style>
    .btn-gender,
    .gender-area input[type=radio]:not([checked])[disabled] + .btn-gender:hover {
        background-color: darkgrey;
        color: white;
    }

    .gender-area input[type=radio] + .btn-gender:hover {
        background-color: grey;
        color: white;
    }

    .gender-area input[type=radio]:checked + .btn-gender,
    .gender-area input[type=radio][checked] + .btn-gender {
        background-color: grey;
        color: white;
    }
</style>