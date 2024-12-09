<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<jsp:include page="index.jsp" />  
<br> <hr>

<c:choose>
    <c:when test="${obj != null}">
        <div style="text-align:center">
            <form action="update-product" method="post">
                <!-- Product ID Field (Disabled) -->
                Product ID: <input type="text" name="pid_display" value="${obj.ID}" disabled="disabled"> <br> <br>
                <!-- Hidden field to submit Product ID -->
                <input type="hidden" name="pid" value="${obj.ID}">

                <!-- Product Name Field -->
                Product Name: <input type="text" name="pn" value="${obj.name}" required placeholder="Enter product name"> <br> <br>

                <!-- Product Price Field -->
                Price: <input type="text" name="pp" value="${obj.price}" required placeholder="Enter product price" pattern="\d+" title="Only numbers are allowed"> <br> <br>

                <!-- Product Quantity Field -->
                Quantity: <input type="text" name="pq" value="${obj.quantity}" required placeholder="Enter product quantity" pattern="\d+" title="Only numbers are allowed"> <br> <br>

                <!-- Product Category Field -->
                Category: <input type="text" name="pc" value="${obj.category}" required placeholder="Enter product category"> <br> <br>

                <!-- Update Button -->
                <button type="submit" class="btn btn-primary"> Update Product </button>
            </form>
        </div>
    </c:when>
    <c:otherwise>
        <!-- Error message if obj is null -->
        <div class="alert alert-danger" role="alert">
            Error: No product details available to update.
        </div>
    </c:otherwise>
</c:choose>

</body>
</html>
