import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads{

    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to database", e);
        }
    }

    @Override
    public List<Ad> all() {
        try {
            Statement stmt = connection.createStatement();
            // ResultSet needs to be handled so we create an instance.
            ResultSet result =stmt.executeQuery("SELECT * FROM ads");
            List <Ad> ads = new ArrayList<>();
            while (result.next()) {
                ads.add(new Ad(
                        result.getLong("id"),
                        result.getInt("user_id"),
                        result.getString("title"),
                        result.getString("description")
                ));
            }
            return ads;

        } catch (SQLException e) {
            throw new RuntimeException("Error Connection to database", e);
        }

    }

    @Override
    public Long insert(Ad ad) {
      try {
          Statement stmt = connection.createStatement();
          String query = "INSERT INTO ads (user_id, title, description) VALUES('"
                  + ad.getUserId() +"','"
                  + ad.getTitle() + "' , '"
                  + ad.getDescription() + "')";

          int stmtReturn = stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
          ResultSet rs = stmt.getGeneratedKeys();
          if (rs.next()) {
              System.out.println("Inserted a new record! New id: " + rs.getLong(1));
          }
          return (long) stmtReturn;
      }catch (SQLException e){
          throw new RuntimeException("Error", e);
      }

    }

    public static void main(String[] args) {

    }
}
