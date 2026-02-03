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
            ResultSet rs = stmt.executeQuery("SELECT movie_id FROM tevyah_movies_data");

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
}
