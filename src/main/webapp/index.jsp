<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="<c:url value="/resources/FrontEndDesign/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/FrontEndDesign/css/flexslider.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/FrontEndDesign/css/jquery.fancybox.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/FrontEndDesign/css/main.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/FrontEndDesign/css/responsive.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/FrontEndDesign/css/font-icon.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/FrontEndDesign/css/animate.min.css" />" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Lokumcu Baba Anasayfa</title>
</head>
<body>
<!-- header section -->
<section class="banner" role="banner">
    <header id="header">
        <div class="header-content clearfix"><a class="logo" href="index.html">Lokumcu Baba</a>
            <nav class="navigation" role="navigation">
                <ul class="primary-nav">
                    <li><a href="#intro">Hakkımızda</a></li>
                    <li><a href="#testimonials">Testimonials</a></li>
                </ul>
            </nav>
            <a href="#" class="nav-toggle">Menu<span></span></a></div>
    </header>
    <!-- banner text -->
    <div class="container">
        <div class="col-md-10 col-md-offset-1">
            <div class="banner-text text-center">
                <h1>Lokumcu Baba Bayiilik Alımları Başlamıştır</h1>
                <p style="color:#ffffff;  text-shadow: 1px 1px 2px black, 0 0 1em blue, 0 0 0.2em darkblue;">Dünyanın en
                    iyi lokum markası ile dünyaya açılmaya ne dersiniz? Öyleyse ne bekliyorsunuz, hemen başvurunuzu
                    alalım. :)</p>
                <a href="/formgoruntule" class="btn btn-large">Hemen Başvur</a></div>
            <!-- banner text -->
        </div>
    </div>
</section>
<!-- header section -->
<!-- intro section -->
<section id="intro" class="section intro">
    <div class="container">
        <div class="col-md-8 col-md-offset-2 text-center">
            <h2>Hakkımızda</h2>
            <h3>2000 yılında Mehmet Çelen tarafından kurulan şirketimiz ile, bir neslin çocukluğunu yaratan iki püskevit
                arası lokum nostaljisini dünyaya yaymayı amaçladık.</h3>
        </div>
    </div>
</section>

<!-- work section -->
<!-- our team section -->

<!-- our team section -->
<!-- Testimonials section -->
<section id="testimonials" class="section testimonials no-padding">
    <div class="container-fluid">
        <div class="row no-gutter">
            <div class="flexslider">
                <ul class="slides">
                    <li>
                        <div class="col-md-12">
                            <blockquote>
                                <h1>"Vallahi kendi lokumum diye demiyorum ama on numara lokumlar pazarlıyoruz." </h1>
                                <p>Mehmet Çelen, Lokumcu Baba</p>
                            </blockquote>
                        </div>
                    </li>
                    <li>
                        <div class="col-md-12">
                            <blockquote>
                                <h1>"Dondurma külahı aromalı lokumlar oldukça dahihane, müthiş bir şey bu." </h1>
                                <p>Arif Yaman, Kemalettin Yazılım</p>
                            </blockquote>
                        </div>
                    </li>
                    <li>
                        <div class="col-md-12">
                            <blockquote>
                                <h1>"İsviçreli bilim adamlarına göre tatlı yiyen tatlı konuşurmuş." </h1>
                                <p>Hatip Aksunger, İsviçreli Bilim Adamları Derneği Yönetim Kurulu Üyesi</p>
                            </blockquote>
                        </div>
                    </li>
                    <li>
                        <div class="col-md-12">
                            <blockquote>
                                <h1>"Resmen ilham kaynağı, adeta kahve gibi kod üretme mekanizması, harikülade." </h1>
                                <p>Canberk Karaoğlan, Bilgisayar Mühendisi</p>
                            </blockquote>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>

<footer class="footer">
    <div class="footer-top section">
        <div class="container">
            <div class="row">
                <div class="footer-col col-md-6">
                    <h5>Adres</h5>
                    <p>Şafak Mahallesi, Akdeniz Sanayi Sitesi 39b<br>
                        07220 Bahtılı Köyü Köyü/Kepez/Antalya</p>

                    <p>Copyright © 2017 LokumcuBaba LTD. ŞTİ. AŞ. Tum hakları saklıdır.</p><br>
                </div>

            </div>
        </div>
    </div>
    <!-- footer top -->

</footer>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="<c:url value="/resources/FrontEndDesign/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/FrontEndDesign/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/FrontEndDesign/js/jquery.flexslider-min.js" />"></script>
<script src="<c:url value="/resources/FrontEndDesign/js/jquery.fancybox.pack.js" />"></script>
<script src="<c:url value="/resources/FrontEndDesign/js/retina.min.js" />"></script>
<script src="<c:url value="/resources/FrontEndDesign/js/modernizr.js" />"></script>
<script src="<c:url value="/resources/FrontEndDesign/js/main.js" />"></script>
</body>
</html>