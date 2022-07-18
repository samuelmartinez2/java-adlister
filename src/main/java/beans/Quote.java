package beans;

import java.io.Serializable;
import java.util.Date;

public class Quote implements Serializable {

    private long id;
    private Author author ;
    private String content;

    public Quote() {
    }

    public Quote(long id, Author author, String content) {
        this.id = id;
        this.author = author;
        this.content = content;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

//    public long getAuthor_id() {
//        return author_id;
//    }
//
//    public void setAuthor_id(long author_id) {
//        this.author_id = author_id;
//    }

    public String getContent() {
        return content;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public void setContent(String content) {
        this.content = content;


    }
}
