function cancel(){
    location.href="/";
}
function signUpCheck() {
    let name = document.getElementById("name").value
    let id = document.getElementById("memId").value
    let pwd = document.getElementById("password").value
    let pwdCk = document.getElementById("passwordCheck").value
    let check = true;

    var Ename = name.search(/[^가-힣a-zA-Z]/g);

    if (name === "")
    {
        document.getElementById("nameError").innerHTML = "이름을 입력해주세요"
        check = false
    }
    else if(! Ename)
    {
        document.getElementById("nameError").innerHTML = "한글 또는 영문만 입력해 주세요"
        check = false
    }
    else
    {
        document.getElementById("nameError").innerHTML = ""
    }

    if (id === "")
    {
        document.getElementById("idError").innerHTML = "아이디가 올바르지 않습니다."
        check = false
    }
    else
    {
        document.getElementById("idError").innerHTML = ""
    }

    var num = pwd.search(/[0-9]/g);
    var eng = pwd.search(/[a-z]/ig);
    var spe = pwd.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

    if( pwd.length < 8 || pwd.length > 15)
    {
        document.getElementById("pwdError").innerHTML = "비밀번호가 올바르지 않습니다."
        check = false
    }
    else if(num < 0 || eng < 0 || spe < 0 ){
        document.getElementById("pwdError").innerHTML = "영문, 숫자, 특수문자를 혼합하여 입력해주세요."
        check = false
    }
    else if(id === pwd.value)
    {
        document.getElementById("pwdError").innerHTML = "비밀번호에 아이디가 포함되었습니다."
        check = false
    }

    else
    {
        document.getElementById("pwdError").innerHTML = ""
    }

    if(pwd != pwdCk)
    {
        document.getElementById("pwdCkError").innerHTML = "비밀번호가 일치하지 않습니다."
        check = false
    }
    else
    {
        document.getElementById("pwdCkError").innerHTML = ""
    }

    if(check)
    {
        document.getElementById("idError").innerHTML=""
        document.getElementById("nameError").innerHTML=""
        document.getElementById("pwdError").innerHTML=""
        document.getElementById("pwdCkError").innerHTML=""
        
        const email = $('#email1').val() + '@' + $('#email2').val();
        console.log(email);
        $.ajax({
            type: "post",
            url: "/member/insertMember",
            data: {"mem_id":$('#memId').val(),
            "mem_pwd":$('#password').val(),
            "mem_name":$('#name').val(),
            "mem_email": email,
            },dataType:'text',
			success:function(result){
				alert("회원가입 완료");
                location.href="/";
			},
			error:function(data, textStatus){
				alert("전송 실패");
			},
        });
    }

}

