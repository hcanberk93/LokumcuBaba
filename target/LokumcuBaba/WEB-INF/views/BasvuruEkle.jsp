<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href="<c:url value="/resources/bootstrap-3.3.7/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/bootstrap-3.3.7/css/bootstrap-theme.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/bootstrap-3.3.7/js/bootstrap.js" />"></script>
    <script src="<c:url value="/resources/jquery/jquery-3.2.1.min.js" />"></script>
    <title>Başvuru Sayfası</title>
    <style>
        body {
            margin-top: 30px;
        }

        hr.message-inner-separator {
            clear: both;
            margin-top: 10px;
            margin-bottom: 13px;
            border: 0;
            height: 1px;
            background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
            background-image: -moz-linear-gradient(left, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
            background-image: -ms-linear-gradient(left, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
            background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
        }

    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-6">
            <div class="alert alert-success">
                <span class="glyphicon glyphicon-ok"></span> <strong>Teşekkürler</strong>
                <hr class="message-inner-separator">
                <p>
                    ${message}</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>