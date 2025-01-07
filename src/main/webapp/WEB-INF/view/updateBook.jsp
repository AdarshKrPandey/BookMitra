<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Book</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>

<div class="container mt-5">
    <h2>Edit Book</h2>

    <!-- Spring Form tag -->
    <form:form modelAttribute="book">

        <!-- CSRF token if using Spring Security -->
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

        <!-- Hidden field to pass bookId -->
        <form:input type="hidden" path="bookId" value="${book.bookId}" />

        <!-- Title field -->
        <div class="form-group">
            <label for="bookTitle">Title</label>
            <form:input type="text" class="form-control" id="bookTitle" path="bookTitle" value="${book.bookTitle}" />
        </div>

        <!-- Author field -->
        <div class="form-group">
            <label for="author">Author</label>
            <form:input type="text" class="form-control" id="author" path="author"  value="${book.author}" />
        </div>

        <!-- Category field -->
        <div class="form-group">
            <label for="category">Category</label>
            <form:input type="text" class="form-control" id="category" path="category" value="${book.category}" required="true"/>
        </div>

        <!-- Price field -->
        <div class="form-group">
            <label for="price">Price</label>
            <form:input type="number" class="form-control" id="price" path="price" value="${book.price}" required="true"/>
        </div>

        <!-- Description field -->
        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea class="form-control" id="description" path="description" value="${book.description}" required="true"/>
        </div>

        <!-- Quantity field -->
        <div class="form-group">
            <label for="quantity">Quantity</label>
            <form:input type="number" class="form-control" id="quantity" path="quantity" value="${book.quantity}" required="true"/>
        </div>

        <button type="submit" class="btn btn-primary">Update Book</button>
    </form:form>

</div>

<!-- Scripts for Bootstrap -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
