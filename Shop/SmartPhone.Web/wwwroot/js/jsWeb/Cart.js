$(document).ready(function () {
    
    $("#buynow").click(function () {
        var colorID = $('.selectedColor').attr('data-colorid');
        var productId = $('.product-info').attr('data-product');
        console.log(colorID);
        console.log(productId);
        var postObj = new Object();
        postObj["productId"] = productId;
        postObj["colorId"] = colorID;
        if (colorID == undefined) {
            //Swal.fire({
            //    icon: 'error',
            //    title: 'Bạn chưa chọn màu sắc!',
            //    showConfirmButton: false,
            //    timer: 1500,

            //})
            toastr.error("Bạn chưa chọn màu sắc!", { positionClass: "toast-top-right" })
            return;
        }
            console.log(postObj);
            $.ajax({
                url: "/Cart/AddToCart",
                type: "post",
                data: { postObj: postObj },
                dataType: "html",
                success: function (res) {

                    window.location.href = "/dat-hang";
                }


            })
       
    })
   
});