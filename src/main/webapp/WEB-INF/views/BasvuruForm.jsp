<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Başvuru Formu</title>
    <link href="<c:url value="/resources/bootstrap-3.3.7/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/bootstrap-3.3.7/css/bootstrap-theme.css" />" rel="stylesheet">
    <link rel='stylesheet prefetch'
          href='http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css'>
    <script src="<c:url value="/resources/bootstrap-3.3.7/js/bootstrap.js" />"></script>
    <script src="<c:url value="/resources/jquery/jquery-3.2.1.min.js" />"></script>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>

    <style type="text/css">
        span.error {
            color: red;
            margin-left: 5px;
        }
    </style>

</head>
<body>
<div class="container">
    <form:form class="well form-horizontal" name="BasvuruFormu" action="/basvuruekle" modelAttribute="FormEntity"
               method="POST">
        <fieldset>
            <legend>Basvuru Formu</legend>

            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label">Ad Soyad</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <form:input path="adSoyad" placeholder="Adiniz ve Soyadiniz" class="form-control"
                                    type="text"></form:input>
                    </div>
                    <span class="error"><form:errors path="adSoyad"></form:errors></span>

                </div>
            </div>


            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label">TC Kimlik No</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-sunglasses"></i></span>
                        <form:input name="TCKimlik" path="tcKimlik" placeholder="TC Kimlik No" class="form-control"
                                    type="text"></form:input>

                    </div>
                    <span class="error"><form:errors path="tcKimlik"></form:errors></span>
                </div>
            </div>


            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label">Adres</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                        <form:input name="Adres" path="adres" placeholder="Adres" class="form-control"
                                    type="text"></form:input>
                    </div>
                    <span class="error"><form:errors path="adres" cssclass="error"></form:errors></span>
                </div>
            </div>

            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label">Telefon</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                        <form:input name="Telefon" path="telefon" placeholder="Örn: 541xxxxxxx" class="form-control"
                                    type="text"></form:input>
                    </div>
                    <span class="error"><form:errors path="telefon" cssclass="error"></form:errors></span>

                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label">E-Posta</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                        <form:input name="ePosta" path="ePosta" placeholder="E-Posta Adresiniz" class="form-control"
                                    type="text"></form:input>
                    </div>
                    <span class="error"><form:errors path="ePosta" cssclass="error"></form:errors></span>

                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label">Dogum Tarihi</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        <form:input name="DTarihi" path="dTarihi" id="DTarihi" placeholder="Örn: 29/05/1990"
                                    class="form-control" type="text"></form:input>
                    </div>
                    <span class="error"><form:errors path="dTarihi" cssclass="error"></form:errors></span>

                </div>
            </div>

            <!-- radio checks -->
            <div class="form-group">
                <label class="col-md-4 control-label">Perakende ticaret tecrubeniz var mi?</label>
                <div class="col-md-4">
                    <div class="checkbox">
                        <form:checkbox path="pTicaret"></form:checkbox>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label">Lokumcu Baba'yı Tercih Sebebiniz: </label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                        <form:input name="TSebep" path="tSebep" placeholder="Tercih Sebebiniz" class="form-control"
                                    type="text"></form:input>
                    </div>
                    <span class="error"><form:errors path="tSebep" cssclass="error"></form:errors></span>

                </div>
            </div>
            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label">Sehir</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                        <form:input name="TSehir" path="tSehir" placeholder="Bayiilik Alacaginiz Sehir"
                                    class="form-control" type="text"></form:input>
                    </div>
                    <span class="error"><form:errors path="tSehir" cssclass="error"></form:errors></span>

                </div>
            </div>

            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label">Ilce</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                        <form:input name="TIlce" path="tIlce" placeholder="Bayiilik Alacaginiz Ilce"
                                    class="form-control" type="text"></form:input>
                    </div>
                    <span class="error"><form:errors path="tIlce" cssclass="error"></form:errors></span>

                </div>
            </div>

            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label">Semt</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                        <form:input name="TSemt" path="tSemt" placeholder="Bayiilik Alacaginiz Semt"
                                    class="form-control" type="text"></form:input>
                    </div>
                    <span class="error"><form:errors path="tSemt" cssclass="error"></form:errors></span>

                </div>
            </div>

            <!-- Text input-->

            <div class="form-group">
                <label class="col-md-4 control-label">Yatirim Miktariniz</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-piggy-bank"></i></span>
                        <form:input name="YMiktari" path="ymiktar" placeholder="0 TL" class="form-control"
                                    type="number"></form:input>
                    </div>
                    <span class="error"><form:errors path="ymiktar" cssclass="error"></form:errors></span>

                </div>
            </div>


            <!-- Text area -->

            <div class="form-group">
                <label class="col-md-4 control-label">Eklemek Istedikleriniz</label>
                <div class="col-md-4 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                    </div>
                    <form:textarea class="form-control" name="Ilave" path="ilave"
                                   placeholder="Eklemek Istedikleriniz"></form:textarea>
                </div>
            </div>

            <!-- Button -->
            <div class="form-group">
                <label class="col-md-4 control-label"></label>
                <div class="col-md-4">
                    <button type="submit" class="btn btn-warning">Formu Gönder <span
                            class="glyphicon glyphicon-send"></span></button>
                </div>
            </div>

        </fieldset>
    </form:form>

</div>
</div><!-- /.container -->
<script src="<c:url value="/resources/bootstrap-3.3.7/js/bootstrap.js" />"></script>
<script src="<c:url value="/resources/jquery/jquery-3.2.1.min.js" />"></script>
</body>
</html>