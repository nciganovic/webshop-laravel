$(document).ready(function(){
    console.log('cart.js');

    $(".item-count").change(function (){
        const row_id = $(this).attr('data-row-id');
        console.log(row_id);

        const price = $("#price-" + row_id).text();
        const count = $(this).val();

        const total = Number(price) * Number(count);

        $("#" + row_id + "-row-total").text(total);
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
            },
            error: function (data) {
                console.log(data);
            }
        });
    });
});
