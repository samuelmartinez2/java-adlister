package beans;

import java.io.Serializable;
import java.util.Date;

public class Album implements Serializable{
    private long id;
    private Artist artist;
    private String name;
    private Date releaseDate;
    private double sales;
    private String genre;

    public Album() {
    }

    public Album(long id, Artist artist, String name, Date releaseDate, double sales, String genre) {
        this.id = id;
        this.artist = artist;
        this.name = name;
        this.releaseDate = releaseDate;
        this.sales = sales;
        this.genre = genre;
    }

    public Album(Artist artist, String name, Date releaseDate, double sales, String genre) {
        this.artist = artist;
        this.name = name;
        this.releaseDate = releaseDate;
        this.sales = sales;
        this.genre = genre;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Artist getArtist() {
        return artist;
    }

    public void setArtist(Artist artist) {
        this.artist = artist;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public double getSales() {
        return sales;
    }

    public void setSales(double sales) {
        this.sales = sales;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }
}
