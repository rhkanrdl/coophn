$(document).ready(function() {

    
 $('div#content.sub').attr("tabindex", "-1");

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
        accessibility: false,
        autoplay:true,
        speed: 1000,
        infinite: true,
        nextArrow:$('.main-next'),
        prevArrow:$('.main-prev')
    });


    $('.dm-list ul').slick({
        accessibility: false,
        autoplay:true,
        speed: 1000,
        infinite: true,
        slidesToShow: 2,
        slidesToScroll: 1,
        nextArrow:$('.dm-next'),
        prevArrow:$('.dm-prev'),
        responsive: [
            {
              breakpoint: 1199,
              settings: {
                slidesToShow: 1,
                slidesToScroll: 1
              }
            }
          ]
    });

    


    $('.gall-slider').slick({
        accessibility: false,
        autoplay:true,
        speed: 1000,
        infinite: true,
        nextArrow:$('.gall-next'),
        prevArrow:$('.gall-prev')
    });

    $('.site-slider').slick({
        accessibility: false,
        slidesToShow: 5,
        slidesToScroll: 1,
        autoplay: false,
        speed: 1000,
        infinite: false,
        nextArrow:$('.site-next'),
        prevArrow:$('.site-prev')
    });
    




    $( "#main-menu" ).focusin(function() {
        $( this ).addClass("on");
      });

      
    $( "#main-menu" ).focusout(function() {
        $( this ).removeClass("on");
      });



      $( "#main-menu h2 a" ).focusin(function() {
        $( this ).addClass("on");
      });

      
    $( "#main-menu h2 a" ).focusout(function() {
        $( this ).removeClass("on");
      });




      $( "#main-menu ul li" ).focusin(function() {
        $( this ).find("ul").addClass("on");
      });

      
    $( "#main-menu ul li" ).focusout(function() {
        $( this ).find("ul").removeClass("on");
      });








    $('.sub ul.menu>li>h2').on("mouseenter", function(){

        $('ul.menu>li>ul').removeClass("on");
        $(this).parent().find("ul").addClass("on");
    });



    $('.main ul.menu>li>h2').on("mouseenter", function(){

        $('ul.menu>li>ul').removeClass("on");
        $("nav#main-menu").addClass("on");
    });


    $('#header').on("mouseleave", function(){

        $('ul.menu>li>ul').removeClass("on");
        $("nav#main-menu").removeClass("on");
    });

    // $(".sitemap button").on("click", function(){
    //     $("nav#main-menu").toggleClass("show");
    //     $("nav#main-menu>ul").toggleClass("allmenu");

    //     $( "nav#main-menu>ul>li:first-child>h2>a" ).focus();

    //     if ($("nav#main-menu>ul").hasClass("allmenu")) {
    //         $('nav#main-menu>ul').removeClass("menu");
    //     } else {
    //         $('nav#main-menu>ul').addClass("menu");
    //     }
    // });





    $(".sitemap button").on("click", function(){


        if ($("nav#main-menu>ul").hasClass("allmenu")) {

            $('nav#main-menu').removeClass("show");
            $('nav#main-menu>ul').removeClass("allmenu");
            $( ".sitemap button" ).focus();

        } else {
            $('nav#main-menu').addClass("show");
            $('nav#main-menu>ul').addClass("allmenu");
            $( "nav#main-menu>ul>li:first-child>h2>a" ).focus();

        }

        if ($("nav#main-menu>ul").hasClass("allmenu")) {
            $('nav#main-menu>ul').removeClass("menu");
        } else {
            $('nav#main-menu>ul').addClass("menu");
        }
    });




    $("nav#main-menu button.close").on("click", function(){
        $("nav#main-menu").removeClass("show");
    });


    $(".notice a.tablink").click(function() {
        
        $(this).parent().parent().find("div.tab-content").removeClass("active");
        $(this).parent().parent().find("a.tablink").removeClass("active");

        $(this).addClass("active");
        $(this).parent().addClass("active");

        return false;
    });

    $(".notice a.tablink").focusin(function(){
        $(this).parent().parent().find("div.tab-content").removeClass("active");
        $(this).parent().parent().find("a.tablink").removeClass("active");
        $(this).addClass("active");
        $(this).parent().addClass("active");

        return false;
    });

    $("ul.tabs li a").on("click", function(){
        $("ul.tabs li a").removeClass("active");
        $("div.tab-data").removeClass("active");
        $(this).addClass("active");
        $("div#"+ $(this).attr("data")).addClass("active");

        console.log("div#"+ $(this).attr("data"));
    });

    $("article.layer-popup .container").each(function(){
        if ($('article.layer-popup .container div').length) {

        } else {
            $("article.layer-popup .container").addClass("sr-only");

        }

    })



});