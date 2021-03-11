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

});
