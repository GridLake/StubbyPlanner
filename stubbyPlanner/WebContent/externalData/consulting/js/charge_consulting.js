$(document).ready(function() {
    // 출국일 미정시 input 비활성화
    $('#undefined-date').click(function() {
        var $dDate = $('input[name=departure-date]');
        $dDate.val('');
        if($(this).prop('checked') == true) {
            $dDate.prop('disabled', true);
            $dDate.addClass('form-disabled');
        } else if($(this).prop('checked') == false) {
            $dDate.prop('disabled', false);
            $dDate.removeClass('form-disabled');
        };
    });
    // 국가 리셋
    $('.ctry_reset').click(function() {
        $(this).closest('.panel').find('li').removeClass('selected');
    });

    // 탭메뉴 펼치기
    $('.tab_title').click(function() {
        $(this).parent().toggleClass('active');
        $(this).parent().siblings().removeClass('active');
    });
    // 탭메뉴 리셋(일반)
    $('.item_reset').click(function() {
        $(this).closest('.panel').find('.tab_item').removeClass('selected');
        $(this).closest('.panel').prev().children('.item_count').text('');
    });
    // 탭메뉴 리셋(버킷)
    $('.bucket_reset').click(function() {
        var sltNum = $(this).parent().next().find('.selected').length;
        $(this).parent().next().find('.tab_item').removeClass('selected');
        var result = parseInt($(this).closest('.panel').prev().children('.item_count').text()) - sltNum;
        if(result > 0) {
            $(this).closest('.panel').prev().children('.item_count').text(result);
        } else {
            $(this).closest('.panel').prev().children('.item_count').text('');
        }
    })

    // 이미지 스와이핑 & 랭킹 & 카운트
    $('.swiper-container').each(function() {
        new Swiper($(this), {
            slidesPerView:'auto',
            freeMode:false,
            direction:'horizontal',
            scrollbar: {
                el:$(this).children('.swiper-scrollbar'),
                hide:true,
            },
            navigation: {
                nextEl: $(this).siblings('.swiper-button-next'),
                prevEl: $(this).siblings('.swiper-button-prev'),
            },
            breakpoints: {
                619: {
                    freeMode:true,
                }
            }
        });
        var $rank1 = $('<i class="rank1"></i>'), $rank2 = $('<i class="rank2"></i>'), $rank3 = $('<i class="rank3"></i>'), $itemNum = $(this).find('li').length;;
        $(this).find('li:nth-child(1) .txtWrap').before($rank1);
        $(this).find('li:nth-child(2) .txtWrap').before($rank2);
        $(this).find('li:nth-child(3) .txtWrap').before($rank3);
        $(this).parent().prev().children('.item_count').text('('+$itemNum+')');
    });

    // 서비스 선택 버튼
    $('.service .btn_apply').click(function() {
        $('.service .btn_apply').removeClass('active');
        $(this).addClass('active');
    });

    // 서비스 선택 버튼 높이정렬(temp)
    $(window).resize(function() {
        var PCview = window.matchMedia("(min-width:1025px)");
        if (PCview.matches) {
            $('#service1').css('margin-top', '154.4px');
            $('#service2').css('margin-top', '63.2px');
        } else {
            $('#service1, #service2').css('margin-top', '0px');
        }
    }).trigger('resize');
});
