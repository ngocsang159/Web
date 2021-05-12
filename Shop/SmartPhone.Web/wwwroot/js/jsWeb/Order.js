$(document).ready(function () {

    $('#checkout-payment').click(function () {
        debugger
        if (CheckValidate()) {
            let obj = new Object();
            $('.form-input input,.form-input select').each(function (i, e) {
                let name = $(e).attr('name');
                let value = $(e).val();
                obj[name] = value;
            })
            obj["PriceShip"] = $('#priceship').attr('data-price')
            console.log(obj);
            $.ajax({
                url: '/Cart/Order',
                type: 'post',
                dataType: 'json',
                data: {
                    obj: obj
                },
                success: function (res) {
                    if (res) {
                        alert("Đặt hàng thành công !!");
                        location.href ='/dat-hang-thanh-cong'
                    }
                    else {
                        location.href = '/dang-nhap-tai-khoan'
                    }
                }
            })
        }
    })
    function CheckValidate() {
        let check = 0;
        $('.form-message').html('');
        $('.field__input-wrapper input[type=text],.field__input-wrapper input[type=number]').each(function () {
            let value = $(this).val();
            console.log(value);
            if (value == '') {
                check++;
                var title = $(this).siblings('label').text();
                console.log(title);
                $(this).siblings('.form-message').append(title + ' không được để trống!');
                $(this).addClass('input-danger');
            }
            else {
                $(this).removeClass('input-danger');
            }
        })
        $('.field__input-wrapper input[type=email]').each(function () {
            let value = $(this).val();
            console.log(value);
            if (value == '') {
                check++;
                var title = $(this).siblings('label').text();
                console.log(title);
                $(this).siblings('.form-message').append(title + ' không được để trống!');
                $(this).addClass('input-danger');
            } else if (value != '') {
                let res = new RegExp(/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/).test(value);
                if (!res) {
                    check++;
                    var title = $(this).siblings('label').text();
                    $(this).siblings('.form-message').append(title + ' sai định dạng!');
                    $(this).addClass('input-danger');
                }
            }
            else {
                $(this).removeClass('input-danger');
            }
           

        })
        return check == 0;

    }


})