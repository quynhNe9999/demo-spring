<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>PixelTrice</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap.min.css">
</head>
<body>
    <br>
    <h1 class="text-center">Spring Boot Image Gallery Application
        <a href="/home" class="btn btn-danger text-right">Go Home</a>
    </h1>
    <br><br>

    <table id="example" class="table table-striped table-bordered text-center">
        <thead>
            <tr>
                <th>SR. No.</th>
                <th>Name</th>
                <th>Image</th>
                <th>Description</th>
                <th>Price</th>
                <th>Created date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="imageGallery" items="${images}" varStatus="hh">
                <tr>
                    <td>${hh.count}</td>
                    <td>${imageGallery.name}</td>
                    <td><img src="<c:url value='/image/display/' />${imageGallery.id}" class="card img-fluid" style="width:100px" alt=""/></td>
                    <td>${imageGallery.description}</td>
                    <td>${imageGallery.price}</td>
                    <td>${fn:substring(imageGallery.createDate, 8, 10) + fn:substring(imageGallery.createDate, 5, 7) +  fn:substring(imageGallery.createDate, 0, 4)}</td>
                    <td><a href="<c:url value='/image/imageDetails'/>?id=${imageGallery.id}" class="btn btn-info text-right" target="_blank">View</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#example').DataTable();
        });
    </script>
</body>
</html>
