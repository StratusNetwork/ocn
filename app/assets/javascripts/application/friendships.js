$(document).ready(function () {
    $('#tabs a').click(function (e) {
        e.preventDefault()
        $(this).tab('show')
    })

    $(".friend-icon")
    .mouseenter(function () {
        $(this).find(".remove-friend").show();
    })
    .mouseleave(function() {
        $(this).find(".remove-friend").hide();
    });
});
