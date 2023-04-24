// on change url signIn > signUp
$('button.signupButton').click(function (){
    location.assign("/signUp");
});

// sinUp page event
$(function () {
    // authenticationBtn remove disabled
    $('#phone').on('keyup', function () {
        if ($(this).val().length === 11) {
            $('.certification').removeAttr('disabled');
        } else {
            $('.certification').attr('disabled', true);
        }
    });

});

// send authentication number
$('button.certification').click(function (){
    
    $.ajax({
        type: 'post',
        url: '/signUp/sendSMS',
        data: 'phone='+$('#phone').val(),
        success: function (data){
            if(data === 'exist'){
                alert("이미 가입된 번호입니다.");
            } else {
                $('#authenticationNumber').removeAttr('disabled'); //authentication number input text remove disabled
                $('.checkNumber').val(data); //random number save
            }
        },
        err: function (err){ console.log(err); }
    });
});

//nextButton remove disabled
$('#authenticationNumber').on('keyup', function () {
    if ($(this).val().length === 6) {
        $('.nextButton').removeAttr('disabled');
    } else {
        $('.nextButton').attr('disabled', true);
    }
});

//nextButton click
$('.nextButton').click(function (){
    if($('#authenticationNumber').val() === $('.checkNumber').val()){
        alert('signUp_2.jsp 로 phone 들고 간다!!');
    }
});

