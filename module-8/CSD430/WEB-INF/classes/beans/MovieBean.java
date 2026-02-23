package beans;

import java.sql.*;
import java.util.ArrayList;

public class MovieBean {

    private String url = "jdbc:mysql://localhost:3306/CSD430";
    private String user = "student1";
    private String pass = "pass";

    public ArrayList<Integer> getMovieIds() {
        ArrayList<Integer> ids = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, pass);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT movie_id FROM tevyah_movies_data ORDER BY movie_id");

            while (rs.next()) {
                ids.add(rs.getInt("movie_id"));
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return ids;
    }

    public ResultSet getMovieById(int id) {
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, pass);
            PreparedStatement ps = conn.prepareStatement(
                "SELECT * FROM tevyah_movies_data WHERE movie_id = ?"
            );
            ps.setInt(1, id);
            rs = ps.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return rs;
    }

    public void addMovie(String title, String genre, int releaseYear, double rating) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, pass);

            PreparedStatement ps = conn.prepareStatement(
                "INSERT INTO tevyah_movies_data (title, genre, release_year, rating) VALUES (?, ?, ?, ?)"
            );

            ps.setString(1, title);
            ps.setString(2, genre);
            ps.setInt(3, releaseYear);
            ps.setDouble(4, rating);

            ps.executeUpdate();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ResultSet getAllMovies() {
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, pass);

            Statement stmt = conn.createStatement();
            rs = stmt.executeQuery("SELECT * FROM tevyah_movies_data ORDER BY movie_id");

        } catch (Exception e) {
            e.printStackTrace();
        }

        return rs;
    }

    public void updateMovie(int movieId, String title, String genre, int releaseYear, double rating) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, pass);

            PreparedStatement ps = conn.prepareStatement(
                "UPDATE tevyah_movies_data SET title=?, genre=?, release_year=?, rating=? WHERE movie_id=?"
            );

            ps.setString(1, title);
            ps.setString(2, genre);
            ps.setInt(3, releaseYear);
            ps.setDouble(4, rating);
            ps.setInt(5, movieId);

            ps.executeUpdate();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
