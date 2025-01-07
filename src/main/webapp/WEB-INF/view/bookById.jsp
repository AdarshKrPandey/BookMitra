<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Centered Box Style -->
<style>
    body {
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        height: 100vh;
        margin: 0;
        background-color: #f4f4f4;
        padding: 20px;
    }

    h2 {
        font-size: 2.5em;
        color: #333;
        margin-bottom: 20px;
        text-align: center;
    }

    .book-box {
        background-color: #ffffff;
        border-radius: 8px;
        box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
        padding: 20px;
        width: 100%; /* Full width */
        max-width: 600px; /* Set a maximum width for the box */
        margin-bottom: 20px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .book-box:hover {
        transform: translateY(-10px);
        box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.15);
    }

    .book-box h3 {
        margin-top: 0;
        font-size: 1.8em;
        color: #333;
    }

    .book-details {
        margin: 10px 0;
    }

    .book-details strong {
        color: #444;
        font-weight: bold;
    }

    .book-details span {
        color: #555;
    }

    .no-books-message {
        text-align: center;
        font-size: 1.3em;
        color: #888;
        margin-top: 30px;
    }

    /* For smaller screens, adjust box width */
    @media (max-width: 768px) {
        .book-box {
            width: 90%;
            max-width: 100%;
        }

        h2 {
            font-size: 2em;
        }
    }

    /* For mobile screens */
    @media (max-width: 480px) {
        h2 {
            font-size: 1.8em;
        }
    }

</style>

<h2>Search Results</h2>

<!-- Check if books are available -->
<c:choose>
    <c:when test="${not empty books}">
        <!-- Loop through books and display each one in a box -->
        <c:forEach var="book" items="${books}">
            <div class="book-box">
                <h3>Book Title: ${book.bookTitle}</h3>

                <!-- Check if Author is present to display -->
                <c:if test="${not empty book.author}">
                    <div class="book-details"><strong>Author:</strong> <span>${book.author}</span></div>
                </c:if>

                <div class="book-details"><strong>Category:</strong> <span>${book.category}</span></div>
                <div class="book-details"><strong>Price:</strong> <span>&#8377;${book.price}</span></div>
                <div class="book-details"><strong>Description:</strong> <span>${book.description}</span></div>

            </div>
        </c:forEach>
    </c:when>
    <c:otherwise>
        <div class="no-books-message">
            <p>No books found for your search.</p>
        </div>
    </c:otherwise>
</c:choose>
