/*
    Handle search by keyup
*/
$(function () {
    $('#searchStories').keyup(function () {
        var val = $(this).val().toLowerCase();

        $(".articleTitle").closest('.articleRow').hide();

        $(".articleTitle").each(function () {
            var text = $(this).text().toLowerCase();

            if (text.indexOf(val) !== -1)
            {
                $(this).closest('.articleRow').show();
            }
        });
    });
});