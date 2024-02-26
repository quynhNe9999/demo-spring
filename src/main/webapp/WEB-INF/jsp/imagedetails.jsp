<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <title>PixelTrice</title>
</head>
<body>
    <br>
    <div class="banner-bootom-w3-agileits py-5">
        <div class="container py-xl-4 py-lg-2">
            <!-- tittle heading -->
            <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
                <span>I</span>mage
                <span>D</span>etails
            </h3><br>
            <!-- //tittle heading -->
            <div class="row">
                <div class="col-lg-5 col-md-8 single-right-left ">
                    <div class="grid images_3_of_2">
                        <div class="flexslider">
                            <div class="thumb-image">
                                <img src="<c:url value='/image/display/' />${id}" class="img img-responsive img-fluid" alt="">
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-7 single-right-left simpleCart_shelfItem">
                    Name: <span>${name}</span>
                    <p>
                        Price: &#36;<span class="item_price">${price}</span>
                    </p>
                    <div class="product-single-w3l">
                        Description: <span>${description}</span>
                    </div><br>
                    <a href="/image/show">Go Back</a>
                    &emsp;<a href="/">Go Home</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
