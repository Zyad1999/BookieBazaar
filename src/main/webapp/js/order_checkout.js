$(document).ready(function () {
    $("#checkoutBtn").click(function () {
        console.log("asxsa");
        $.ajax({
            type: "POST",
            url: "checkout",
            success: function (result) {
                console.log(result);
                if(result.state==0){
                    window.location.href = "home";
                } else{
                    $("#checkoutMsg").html(result.msg);
                }
                
            }
        });
    });
});