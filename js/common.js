$(document).ready(function() {
                                
    function viewMode() {
        if($(window).width() < 1200) {

            $(".main-slider div").each(function(){
                var txt1 = $(this).find("img").attr("src");
                var txt2 = txt1.replace('image/w-', 'image/m-');
                var txt1 = $(this).find("img").attr("src", txt2);
            });

        } else {

            $(".main-slider div").each(function(){
                var txt1 = $(this).find("img").attr("src");
                var txt2 = txt1.replace('image/m-', 'image/w-');
                var txt1 = $(this).find("img").attr("src", txt2);
            });


        }
    }

    viewMode();

    $(window).resize(function(){
        viewMode();
    });


    $('.main-slider').slick({
        autoplay:true,
        speed: 1000,
        infinite: true,
        nextArrow:$('.main-next'),
        prevArrow:$('.main-prev')
    });

    $('.site-slider').slick({

        slidesToShow: 5,
        slidesToScroll: 1,
        autoplay: true,
        speed: 1000,
        infinite: true,
        nextArrow:$('.site-next'),
        prevArrow:$('.site-prev')
    });
    



    $('ul.menu>li>h2').on("mouseenter", function(){

        $('ul.menu>li>ul').removeClass("on");
        $(this).parent().find("ul").addClass("on");
    });


    $('#header').on("mouseleave", function(){

        $('ul.menu>li>ul').removeClass("on");
    });

    $(".sitemap a").on("click", function(){
        $("nav#main-menu").toggleClass("show");
        $("nav#main-menu>ul").toggleClass("allmenu");

        if ($("nav#main-menu>ul").hasClass("allmenu")) {
            $('nav#main-menu>ul').removeClass("menu");
        } else {
            $('nav#main-menu>ul').addClass("menu");
        }
    });

    $("nav#main-menu button.close").on("click", function(){
        $("nav#main-menu").removeClass("show");
    });

    $('div.notice div.tabs input[type="radio"]').click(function(){
        if ($(this).is(':checked'))
        {
            $('div.notice div.data').removeClass("show");
            $('div.notice div.data.'+ $(this).attr("id")).addClass("show");
        }
      });


});