$(document).ready(function(){
    // 취소
    $("#cencle").on("click", function(){
        
        location.href = "/";
                    
    })

    $("#submit").on("click", function(){
        if($("#mem_pwd").val()==""){
            alert("비밀번호를 입력해주세요.");
            $("#mem_pwd").focus();
            return false;
        }
        $.ajax({
            url : "/member/memberDelete",
            type : "POST",
            dataType : "text",
            data : {"mem_id":$('#mem_id').val(),
                    "mem_pwd":$('#mem_pwd').val()},
            success: function(data){
                if(data==0){
                    alert("패스워드가 틀렸습니다.");
                    return;
                }else{
                    alert("탈퇴 되었습니다");
                    location.href="/";
                    
                }
            },
            error:function(data, textStatus){
                alert("전송 실패");
            },
        });
        
    });

});