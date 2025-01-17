package org.spring.bookMitra.data;

public class BookData {

    private Integer bookId;
    private String bookTitle;
    private String author;
    private String category;
    private int price;  // Assuming price is an integer type
    private String description;
    private int quantity;
    private String image;  //

    public BookData(Integer bookId, String bookTitle, String author, String category, int price, String description, int quantity, String image) {
        this.bookId = bookId;
        this.bookTitle = bookTitle;
        this.author = author;
        this.category = category;
        this.price = price;
        this.description = description;
        this.quantity = quantity;
        this.image = image;
    }
    public BookData() {}

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "BookData{" +
                "bookId=" + bookId +
                ", bookTitle='" + bookTitle + '\'' +
                ", author='" + author + '\'' +
                ", category='" + category + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", quantity=" + quantity +
                ", image='" + image + '\'' +
                '}';
    }
}
