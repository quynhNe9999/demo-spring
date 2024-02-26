<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>PixelTrice</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="/css/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
  <br><br>
  <h1 class="text-center">Spring Boot Image Gallery Application</h1><br><br>
 <br>
  <div class="contact py-sm-5 py-4">
    <div class="container py-xl-4 py-lg-2">
      <!-- form -->
      <form id="form">
        <div class="contact-grids1 w3agile-6">
          <div class="row">
            <!-- ... (rest of the HTML code) ... -->
          </div>
          <div class="right-w3l col-md-6">
            <input type="button" id="submit" class="btn btn-primary form-control" value="Submit">
            <br><br>
          </div>
          <a href="/image/show" style="float:left;" class="btn btn-success text-right">Show All</a>
        </div>
        <br>
        <div id="success" class="text-center" style="color:green;"></div>
        <div id="error" class="text-center" style="color:red;"></div>
      </form>
    </div>
  </div>
  <p class="text-center">
    <img src="/images/loader.gif" alt="loader" style="width: 150px;height: 120px;" id="loader">
  </p>
  <script src="/js/product.js"></script>
</body>
</html>
