$(document).ready(function(){
    console.log('cart.js');

    $(".item-count").change(function (){
        if(Number($(this).val()) < 1 || Number($(this).val()) > 20){
            $(this).val(1);
        }

        const row_id = $(this).attr('data-row-id');
        console.log(row_id);

        const price = $("#price-" + row_id).text();
        const count = $(this).val();

        let total = Number(price) * Number(count);
        total = Math.round(total * 10) / 10;

        const product_id = $(this).attr('data-product-id');
        console.log(product_id);

        $.ajax({
            url: "http://127.0.0.1:8000/cart/update/count",
            method: "post",
            dataType: "json",
            data: {
                product_id: product_id,
                count: count
            },
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (data) {
                console.log(data);
                $("#" + row_id + "-row-total").text(total);
            },
            error: function (data) {
                console.log(data);
            }
        });


    });

    $(".del-row-btn").click(function (){
        console.log("delete");
        const id = $(this).attr('id');
        const product_id = id.split("-")[1];
        console.log(product_id);

        $.ajax({
            url: "http://127.0.0.1:8000/cart/remove",
            method: "post",
            dataType: "json",
            data: {
                id: product_id
            },
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (data) {
                $("#table-row-" + product_id).addClass("d-none");

                let cart_count = $('#cart-count').text();
                cart_count = Number(cart_count) - 1;
                $('#cart-count').text(cart_count);

                if(data.message == 0){
                    $("#cart-table").addClass("d-none");
                    $("#cart-button").addClass("d-none");
                    $("#cart-text").removeClass("d-none");
                }
            },
            error: function (data) {
                console.log(data);
            }
        });
    });
});
