$(document).ready(function() {
    // 카테고리 필터링
    $('.tabArea li button').click(function() {
        var filterName = $(this).attr('class');
        $('.tabArea li').removeClass('current');
        $(this).parent().addClass('current');
        $('.contArea:not(.' + filterName +')').addClass('d-n');
        $('.contArea.' + filterName).removeClass('d-n');
    });
    // 전체여행지 on
    $('.select_country .btnWrap a').click(function() {
        $('body').addClass('modal-opened');
        $('.stu_md_select_group').addClass('active');
    });
    // 전체여행지 off
    $('.stu_md_head a, .stu_md_background').click(function() {
        $('body').removeClass('modal-opened');
        $('.stu_md_select_group').removeClass('active');
    });
});
