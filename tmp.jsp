<%@ page import="org.springframework.web.servlet.support.RequestContextUtils" %>
<%@ page import="com.infomind.wp.plugin.popup.service.WpPopupService" %>
<%@ page import="com.infomind.wp.plugin.popup.vo.WpPopup" %>
<%@ page import="java.util.List" %>
<%@ page import="org.springframework.web.context.WebApplicationContext" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="wp" uri="http://infomind.com/wp" %>
<%@ taglib prefix="info" uri="http://infomind.com/info" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>희망나래</title>


    <link rel="stylesheet" href="/sources/css/POST000000000000006.css">
    <!-- javaScript -->
    <script src="<c:url value="/sources/js/jquery-1.11.3.min.js"/>"></script>
    <script src="<c:url value="/sources/js/slick.min.js"/>"></script>
    <script src="<c:url value="/sources/js/common.js"/>"></script>

</head>
<body class="main">
<!-- S:skip_navi -->
<div class="skip_navi">
    <a class="sr-only sr-only-focusable" href="#first">메뉴 바로가기</a>
    <a class="sr-only sr-only-focusable" href="#content">본문 바로가기</a>
    <a class="sr-only sr-only-focusable" href="#footer">푸터 바로가기</a>

</div>
<!-- E:skip_navi -->
<!-- S:header -->
<header id="header">
    <div class="container">
        <h1><a href="/" title="희망나래 사회적 협동조합 홈페이지 메인으로 이동">희망나래 사회적협동조합</a></h1>
        <!-- S:main_menu -->
        <!-- E:main_menu -->


    </div>



    <nav id="main-menu">
        <wp:menu menuCode="INFOMIND"  renderClass="com.infomind.wp.theme.hope.menu.HopeRenderMenu"/>




        <button class="close"><i class='bx bxs-x-circle'></i>닫기</button>
    </nav>
    <ul class="util-menu">
        <li class="facebook">
            <a href="https://www.facebook.com/coophn/" target="_blank" title="희망나래 페이스북으로 새창이동"><i class='bx bxl-facebook'></i>페이스북 바로가기</a>
        </li>
        <li class="kakao">
            <a href="http://pf.kakao.com/_YUxlbj" target="_blank" title="희망나래 카카오톡 플러스친구새창이동"><i class='bx bxs-message-rounded'></i>카카오톡 플러스친구 바로가기</a>
        </li>
        <li class="youtube">
            <a href="https://www.youtube.com/channel/UCCpCMqE7q9HFaRCSY16tC1A" target="_blank" title="희망나래 유튜브로 새창이동"><i class='bx bxl-youtube'></i>유튜브 바로가기</a>
        </li>

    </ul>

</header>
<!-- E:header -->
<tiles:insertAttribute name="content"/>
<!-- S:footer -->
<footer id="footer" tabindex="-1">
    <div class="container">
        <ul class="footer-menu">
            <li><a href="/front/menu/MENU000000000000039/">오시는길</a></li>
            <li><a href="/front/menu/MENU000000000000070/">이용약관</a></li>
            <li><a href="/front/menu/MENU000000000000071/">개인정보보호정책</a></li>
            <li><a href="/front/menu/MENU000000000000037/">조합원안내</a></li>
            <li><a href="http://www.hncoop.co.kr/" target="_blank" title="쇼핑몰 바로가기 새창열림">쇼핑몰</a></li>
        </ul>
        <address class="normal">
            <h2 class="sr-only">법인 주소정보</h2>
            <p>제주특별자치도 제주시 중앙로 175 3층(이도일동) / TEL: 064-751-5150 (법인) / FAX: 064-751-5153</p>
            <p>대표자: 최영열 / 사업자번호 695-82-00070</p>
        </address>
        <address class="work">
            <h2 class="sr-only">희망나래일터 주소정보</h2>
            <p>제주특별자치도 제주시 중앙로 175 3층(이도일동) / TEL: 064-751-5152 / FAX: 064-751-5153</p>
            <p>대표자: 박인향 / 사업자번호 254-82-00113</p>
        </address>
        <address class="wcenter">
            <h2 class="sr-only">희망나래활동센터 주소정보</h2>
            <p>제주특별자치도 제주시 중앙로 175 3층(이도일동) / TEL: 064-752-5151 / FAX: 070-8147-5152</p>
            <p>대표자: 최영열 / 사업자번호 130-82-18563</p>
        </address>
        <address class="comm">
            <h2 class="sr-only">희망나래공동체 주소정보</h2>
            <p>제주도특별자치도 제주시 신광로6길 26, A동 103호(연동,제원APT) / TEL: 064)746-7774 / FAX: 064-751-5153</p>
            <p>대표자: 최영열 / 사업자번호 695-82-00070</p>
        </address>

        <a class="wa" href="/sources/images/wa.pdf" target="_blank" title="웹접근성 인증서 새창열림">사회복지법인 희망나래는 사회적기업 입니다.</a>
        <p class="sec">사회복지법인 희망나래는 사회적기업 입니다.</p>
        <p class="copyright">ⓒ 희망나래 All Rights Reserved.</p>
    </div>
</footer>
<script>
    function getCookie(name) {
        var nameOfCookie = name + "=";
        var x = 0;
        while (x <= document.cookie.length) {
            var y = (x + nameOfCookie.length);
            if (document.cookie.substring(x, y) == nameOfCookie) {
                if ((endOfCookie = document.cookie.indexOf(";", y)) == -1)
                    endOfCookie = document.cookie.length;
                return unescape(document.cookie.substring(y, endOfCookie));
            }
            x = document.cookie.indexOf(" ", x) + 1;
            if (x == 0)
                break;
        }

        return "";
    }

    function setCookie(name, value, expiredays) {
        var todayDate = new Date();
        todayDate.setDate(todayDate.getDate() + expiredays);
        document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
    }

    $(document).ready(function () {
        for (var i = 0; i <= 10; i++) {
            var blnCookie = getCookie('w' + i);
            if (blnCookie) {
                $('.w' + i).hide();
            }
        }

        $('.closePopupBtn').click(function () {
            //  alert("ddd");

            var idx = $(this).data('w');

            if ($('.w' + idx).find('.closePop').is(':checked')) {
                //  alert(1);
                setCookie('w' + idx, "done", 1);
            }

            $('.w' + idx).hide();
        });
    });
</script>

<%
    WebApplicationContext ctx = RequestContextUtils.findWebApplicationContext(request);
    WpPopupService popupService = ctx.getBean(WpPopupService.class);
    WpPopup popup = new WpPopup();
    popup.setPop_group("popup");
    popup.setPop_on_type("조건");
    List<WpPopup> popupList = popupService.selectList(popup);
    request.setAttribute("popupList", popupList);
%>


<article class="layer-popup">
    <div class="container">


        <c:forEach items="${popupList}" var="item" varStatus="status">
            <c:forEach items="${item.pop_pc_image_list}" var="image">
                <div class="outline w${status.count}">
                    <a href="">
                        <img src="${image.realViewUrl}" alt="">
                    </a>
                    <div class="check">
                        <input id="no-popup" type="checkbox" class="closePop">
                        <label for="no-popup">더이상 보이지 않기</label>
                        <button class="closePopupBtn" data-w="${status.count}">닫기</button>
                    </div>
                </div>

            </c:forEach>


        </c:forEach>

        <%--<div class="outline w1">--%>
        <%--<a href="">--%>
        <%--<img src="/sources/images/popup.png" alt="">--%>
        <%--</a>--%>
        <%--<div class="check">--%>
        <%--<input id="no-popup" type="checkbox" class="closePop">--%>
        <%--<label for="no-popup">더이상 보이지 않기</label>--%>
        <%--<button class="closePopupBtn" data-w="1">닫기</button>--%>
        <%--</div>--%>
        <%--</div>--%>
    </div>
</article>


<!-- E:footer -->




<!--
            <article class="layer-popup">
                <div class="container">



                    <div class="outline">
                        <a href="">
                            <img src="/sources/images/popup.png" alt="">
                        </a>
                        <div class="check">
                            <input id="no-popup" type="checkbox">
                            <label for="no-popup">더이상 보이지 않기</label>
                            <button>닫기</button>
                        </div>
                    </div>



                    <div class="outline">
                            <a href="">
                                <img src="/sources/images/popup.png" alt="">
                            </a>
                            <div class="check">
                                <input id="no-popup" type="checkbox">
                                <label for="no-popup">더이상 보이지 않기</label>
                                <button>닫기</button>
                            </div>
                        </div>

					 <div class="outline">
                            <a href="">
                                <img src="/sources/images/popup.png" alt="">
                            </a>
                            <div class="check">
                                <input id="no-popup" type="checkbox">
                                <label for="no-popup">더이상 보이지 않기</label>
                                <button>닫기</button>
                            </div>
                        </div>
						<div class="outline">
                            <a href="">
                                <img src="/sources/images/popup.png" alt="">
                            </a>
                            <div class="check">
                                <input id="no-popup" type="checkbox">
                                <label for="no-popup">더이상 보이지 않기</label>
                                <button>닫기</button>
                            </div>
                        </div>

                </div>
            </article>
https://sir.kr/g4_tiptech/23170
-->

</body>

</html>