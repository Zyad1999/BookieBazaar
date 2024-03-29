<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Home</title>
    <style>
        @media (max-width: 767px) {
            ol.carousel-indicators li:nth-child(n+1) {
                display: none;
            }
        }
    </style>
    <link rel="icon" href="images/fevicon/fevicon.png" type="image/gif" />
</head>

<body id="default_theme" class="book_images">
<!-- loader -->
<div class="bg_load"><img class="loader_animation" src="images/loaders/loader_1.png" alt="#"/></div>
<!-- end loader -->

<%@include file="header.jsp" %>

<!-- section -->
<div id="slider" class="section main_slider">
    <div class="container-fuild">
        <div class="row">
            <div id="rev_slider_4_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container"
                 data-alias="classicslider1"
                 style="margin:0px auto;background-color:transparent;padding:0px;margin-top:0px;margin-bottom:0px;">
                <!-- START REVOLUTION SLIDER 5.0.7 auto mode -->
                <div id="rev_slider_4_1" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.0.7">
                    <ul>
                        <li data-index="rs-1812" data-transition="zoomin" data-slotamount="7"
                            data-easein="Power4.easeInOut"
                            data-easeout="Power4.easeInOut" data-masterspeed="2000"
                            data-thumb="images/book_images/b2.jpg"
                            data-rotate="0" data-saveperformance="off" data-title="Computer Services"
                            data-description="">
                            <!-- MAIN IMAGE -->
                            <img src="images/book_images/b2.jpg" alt="#" data-bgposition="center center"
                                 data-kenburns="on"
                                 data-duration="30000" data-ease="Linear.easeNone" data-scalestart="100"
                                 data-scaleend="120"
                                 data-rotatestart="0" data-rotateend="0" data-offsetstart="0 0" data-offsetend="0 0"
                                 data-bgparallax="10" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->
                            <!-- LAYER NR. BG -->
                            <div class="tp-caption tp-shape tp-shapewrapper   rs-parallaxlevel-0"
                                 id="slide-270-layer-1012"
                                 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                 data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                 data-width="full" data-height="full" data-whitespace="nowrap"
                                 data-transform_idle="o:1;"
                                 data-transform_in="opacity:0;s:1500;e:Power3.easeInOut;"
                                 data-transform_out="s:300;s:300;"
                                 data-start="750" data-basealign="slide" data-responsive_offset="on"
                                 data-responsive="off"
                                 style="z-index: 5;background-color:rgba(0, 0, 0, 0.25);border-color:rgba(0, 0, 0, 0.50);">
                            </div>
                            <!-- LAYER NR. 1 -->
                            <div class="tp-caption tp-shape tp-shapewrapper   tp-resizeme rs-parallaxlevel-0"
                                 id="slide-18-layer-912" data-x="['center','center','center','center']"
                                 data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']"
                                 data-voffset="['15','15','15','15']" data-width="500" data-height="140"
                                 data-whitespace="nowrap"
                                 data-transform_idle="o:1;"
                                 data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power4.easeInOut;"
                                 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                                 data-mask_in="x:0px;y:0px;" data-mask_out="x:inherit;y:inherit;" data-start="2000"
                                 data-responsive_offset="on"
                                 style="z-index: 5;background-color:rgba(29, 29, 29, 0.85);border-color:rgba(0, 0, 0, 0.50);">
                            </div>
                            <!-- LAYER NR. 2 -->
                            <div class="tp-caption NotGeneric-Title   tp-resizeme rs-parallaxlevel-0"
                                 id="slide-18-layer-112"
                                 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                 data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                 data-fontsize="['70','70','70','35']" data-lineheight="['70','70','70','50']"
                                 data-width="none"
                                 data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;"
                                 data-transform_in="y:[-100%];z:0;rZ:35deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;"
                                 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                                 data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                                 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="1000"
                                 data-splitin="chars"
                                 data-splitout="none" data-responsive_offset="on" data-elementdelay="0.05"
                                 style="z-index: 6; white-space: nowrap;">Book Store
                            </div>
                            <!-- LAYER NR. 3 -->
                            <div class="tp-caption NotGeneric-SubTitle   tp-resizeme rs-parallaxlevel-0"
                                 id="slide-18-layer-412" data-x="['center','center','center','center']"
                                 data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']"
                                 data-voffset="['52','51','51','31']" data-width="none" data-height="none"
                                 data-whitespace="nowrap" data-transform_idle="o:1;"
                                 data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
                                 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                                 data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
                                 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="1500"
                                 data-splitin="none"
                                 data-splitout="none" data-responsive_offset="on"
                                 style="z-index: 7; white-space: nowrap;">
                                Available On
                                BOOKIEBAZAAR

                            </div>
                        </li>
                        <li data-index="rs-181" data-transition="zoomin" data-slotamount="7"
                            data-easein="Power4.easeInOut"
                            data-easeout="Power4.easeInOut" data-masterspeed="2000"
                            data-thumb="images/book_images/b1.jpg"
                            data-rotate="0" data-saveperformance="off" data-title="Easy To Use & Customize"
                            data-description="">
                            <!-- MAIN IMAGE -->
                            <img src="images/book_images/b1.jpg" alt="" data-bgposition="center center"
                                 data-kenburns="on"
                                 data-duration="30000" data-ease="Linear.easeNone" data-scalestart="100"
                                 data-scaleend="120"
                                 data-rotatestart="0" data-rotateend="0" data-offsetstart="0 0" data-offsetend="0 0"
                                 data-bgparallax="10" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->
                            <!-- LAYER NR. BG -->
                            <div class="tp-caption tp-shape tp-shapewrapper   rs-parallaxlevel-0"
                                 id="slide-270-layer-101"
                                 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                 data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                 data-width="full" data-height="full" data-whitespace="nowrap"
                                 data-transform_idle="o:1;"
                                 data-transform_in="opacity:0;s:1500;e:Power3.easeInOut;"
                                 data-transform_out="s:300;s:300;"
                                 data-start="750" data-basealign="slide" data-responsive_offset="on"
                                 data-responsive="off"
                                 style="z-index: 5;background-color:rgba(0, 0, 0, 0.25);border-color:rgba(0, 0, 0, 0.50);">
                            </div>
                            <!-- LAYER NR. 1 -->
                            <div class="tp-caption tp-shape tp-shapewrapper   tp-resizeme rs-parallaxlevel-0"
                                 id="slide-18-layer-91" data-x="['center','center','center','center']"
                                 data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']"
                                 data-voffset="['15','15','15','15']" data-width="500" data-height="140"
                                 data-whitespace="nowrap"
                                 data-transform_idle="o:1;"
                                 data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power4.easeInOut;"
                                 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                                 data-mask_in="x:0px;y:0px;" data-mask_out="x:inherit;y:inherit;" data-start="2000"
                                 data-responsive_offset="on"
                                 style="z-index: 5;background-color:rgba(29, 29, 29, 0.85);border-color:rgba(0, 0, 0, 0.50);">
                            </div>
                            <!-- LAYER NR. 2 -->
                            <div class="tp-caption NotGeneric-Title   tp-resizeme rs-parallaxlevel-0"
                                 id="slide-18-layer-11"
                                 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                 data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                 data-fontsize="['70','70','70','35']" data-lineheight="['70','70','70','50']"
                                 data-width="none"
                                 data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;"
                                 data-transform_in="y:[-100%];z:0;rZ:35deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;"
                                 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                                 data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                                 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="1000"
                                 data-splitin="chars"
                                 data-splitout="none" data-responsive_offset="on" data-elementdelay="0.05"
                                 style="z-index: 6; white-space: nowrap;">Book is a friend 
                            </div>
                            <!-- LAYER NR. 3 -->
                            <div class="tp-caption NotGeneric-SubTitle   tp-resizeme rs-parallaxlevel-0"
                                 id="slide-18-layer-41" data-x="['center','center','center','center']"
                                 data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']"
                                 data-voffset="['52','51','51','31']" data-width="none" data-height="none"
                                 data-whitespace="nowrap" data-transform_idle="o:1;"
                                 data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
                                 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                                 data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
                                 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="1500"
                                 data-splitin="none"
                                 data-splitout="none" data-responsive_offset="on"
                                 style="z-index: 7; white-space: nowrap;">
                                Available On
                                BOOKIEBAZAAR
                            </div>
                        </li>
                        <li data-index="rs-18" data-transition="zoomin" data-slotamount="7"
                            data-easein="Power4.easeInOut"
                            data-easeout="Power4.easeInOut" data-masterspeed="2000"
                            data-thumb="images/book_images/Library-.jpeg" data-rotate="0" data-saveperformance="off"
                            data-title="Perfectly Responsive" data-description="">
                            <!-- MAIN IMAGE -->
                            <img src="images/book_images/Library-.jpeg" alt="" data-bgposition="center center"
                                 data-kenburns="on" data-duration="30000" data-ease="Linear.easeNone"
                                 data-scalestart="100"
                                 data-scaleend="120" data-rotatestart="0" data-rotateend="0" data-offsetstart="0 0"
                                 data-offsetend="0 0" data-bgparallax="10" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->
                            <!-- LAYER NR. BG -->
                            <div class="tp-caption tp-shape tp-shapewrapper   rs-parallaxlevel-0"
                                 id="slide-270-layer-10"
                                 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                 data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                 data-width="full" data-height="full" data-whitespace="nowrap"
                                 data-transform_idle="o:1;"
                                 data-transform_in="opacity:0;s:1500;e:Power3.easeInOut;"
                                 data-transform_out="s:300;s:300;"
                                 data-start="750" data-basealign="slide" data-responsive_offset="on"
                                 data-responsive="off"
                                 style="z-index: 5;background-color:rgba(0, 0, 0, 0.25);border-color:rgba(0, 0, 0, 0.50);">
                            </div>
                            <!-- LAYER NR. 1 -->
                            <div class="tp-caption tp-shape tp-shapewrapper   tp-resizeme rs-parallaxlevel-0"
                                 id="slide-18-layer-9" data-x="['center','center','center','center']"
                                 data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']"
                                 data-voffset="['15','15','15','15']" data-width="500" data-height="140"
                                 data-whitespace="nowrap"
                                 data-transform_idle="o:1;"
                                 data-transform_in="y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power4.easeInOut;"
                                 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                                 data-mask_in="x:0px;y:0px;" data-mask_out="x:inherit;y:inherit;" data-start="2000"
                                 data-responsive_offset="on"
                                 style="z-index: 5;background-color:rgba(29, 29, 29, 0.85);border-color:rgba(0, 0, 0, 0.50);">
                            </div>
                            <!-- LAYER NR. 2 -->
                            <div class="tp-caption NotGeneric-Title   tp-resizeme rs-parallaxlevel-0"
                                 id="slide-18-layer-1"
                                 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                 data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
                                 data-fontsize="['70','70','70','35']" data-lineheight="['70','70','70','50']"
                                 data-width="none"
                                 data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;"
                                 data-transform_in="y:[-100%];z:0;rZ:35deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;"
                                 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                                 data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                                 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="1000"
                                 data-splitin="chars"
                                 data-splitout="none" data-responsive_offset="on" data-elementdelay="0.05"
                                 style="z-index: 6; white-space: nowrap;">Your Books In One Place
                            </div>
                            <!-- LAYER NR. 3 -->
                            <div class="tp-caption NotGeneric-SubTitle   tp-resizeme rs-parallaxlevel-0"
                                 id="slide-18-layer-4"
                                 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
                                 data-y="['middle','middle','middle','middle']" data-voffset="['52','51','51','31']"
                                 data-width="none" data-height="none" data-whitespace="nowrap"
                                 data-transform_idle="o:1;"
                                 data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:2000;e:Power4.easeInOut;"
                                 data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                                 data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;"
                                 data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="1500"
                                 data-splitin="none"
                                 data-splitout="none" data-responsive_offset="on"
                                 style="z-index: 7; white-space: nowrap;">
                                Available On
                                BOOKIEBAZAAR

                            </div>
                        </li>
                    </ul>
                    <div class="tp-static-layers"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end section -->


<!-- section -->
<div class="section padding_layout_1">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="full">
                    <div class="main_heading text_align_center">
                        <h2>Our Products</h2>
                        <p class="large">We package the products with best services to make you a happy customer.</p>
                    </div>
                </div>
            </div>
            <c:forEach items="${requestScope.bookSample}" var="book">
                <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all center" style="max-width: 300px">
                    <div class="product_list">
                        <div class="product_img"><a href="book?bookId=${book.id}"> <img class="img-responsive" width="260" height="350"
                                                      src="images/book_images/${book.img}" alt=""></a></div>
                        <div class="product_detail_btm">
                            <div class="center">
                                <h4><a href="book?bookId=${book.id}">
                                    <c:out value="${book.name}"/>
                                </a></h4>
                            </div>
                            <div class="product_price">
                                <p><span class="new_price">&pound;
                            <c:out value="${book.price}"/>
                          </span></p>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>

            <div class="center">
                <a class="btn sqaure_bt" id="allProudcts" href="shop">View More</a>
            </div>
        </div>

    </div>

    <!-- <div class="section padding_layout_1"> -->
    <br><br><br><br><br><br>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="full">
                    <div class="main_heading text_align_center">
                        <h2>Our Categories</h2>
                        <p class="large">We package the products with best services to make you a happy customer.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-xl">
            <div class="row">
                <div class="col-md-12 mx-auto">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">
                        <!-- Carousel indicators -->
                        <c:set var="numIndicators" value="${fn:length(applicationScope.shopBooks.getCategories(1))/3}"/>

                        <ol class="carousel-indicators">
                            <c:set var="numIndicators"
                                   value="${fn:length(applicationScope.shopBooks.getCategories(1)) % 3 == 0 ? fn:length(applicationScope.shopBooks.getCategories(1)) / 3 : fn:length(applicationScope.shopBooks.getCategories(1)) / 3 + 1}"/>
                            <c:forEach var="i" begin="0" end="${numIndicators - 1}" varStatus="loop">
                                <li data-target="#myCarousel" data-slide-to="${i}"
                                    class="${loop.first ? 'active' : ''}"></li>
                            </c:forEach>
                        </ol>
                        <!-- Wrapper for carousel items -->
                        <div class="carousel-inner">
                            <c:forEach var="category" items="${applicationScope.shopBooks.getCategories(1)}"
                                       varStatus="loop">
                                <c:if test="${loop.index % 3 == 0}">
                                    <div class="carousel-item${loop.first ? ' active' : ''}">
                                    <div class="row">
                                </c:if>

                                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 margin_bottom_30_all">
                                    <div class="product_list">
                                        <div class="product_img"><img class="img-responsive" width="300" height="400"
                                                                      src="images/book_images/${category.img}" alt="">
                                        </div>
                                        <div class="product_detail_btm">
                                            <div class="center">
                                                <h4><a href="shop?name=${category.category}">
                                                    <c:out value="${category.category}"/>
                                                </a></h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <c:if test="${(loop.index + 1) % 3 == 0 || loop.last}">
                                    </div><!-- .row -->
                                    </div><!-- .carousel-item -->
                                </c:if>
                            </c:forEach>
                        </div><!-- .carousel-inner -->
                        <!-- Carousel controls -->
                        <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- </div> -->

</div>
<!-- end section -->
<script>
    var loggedin = (/true/i).test("${not empty sessionScope.currentUser}");
</script>
<script src="js/home.js"></script>
<%@include file="footer.jsp" %>
</body>

</html>