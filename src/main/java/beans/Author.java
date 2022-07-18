package beans;

import java.io.Serializable;

public class Author implements Serializable {
    private long id;
    private String first_name;
    private String Last_name;


    public Author() {
    }

    public Author(long id, String first_name, String last_name) {
        this.id = id;
        this.first_name = first_name;
        Last_name = last_name;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return Last_name;
    }

    public void setLast_name(String last_name) {
        Last_name = last_name;
    }
}
