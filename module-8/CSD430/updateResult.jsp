<%@ page import="java.sql.*, beans.MovieBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Result</title>
</head>
<body>

<h2>Movie Record Updated</h2>
<p>The record below shows the updated values.</p>

<%
    int movieId = Integer.parseInt(request.getParameter("movie_id"));
    String title = request.getParameter("title");
    String genre = request.getParameter("genre");
    int releaseYear = Integer.parseInt(request.getParameter("release_year"));
    double rating = Double.parseDouble(request.getParameter("rating"));

    MovieBean bean = new MovieBean();
    bean.updateMovie(movieId, title, genre, releaseYear, rating);

    ResultSet rs = bean.getMovieById(movieId);
%>

<table border="1">
    <thead>
        <tr>
            <th>movie_id (INT)</th>
            <th>title (VARCHAR)</th>
            <th>genre (VARCHAR)</th>
            <th>release_year (INT)</th>
            <th>rating (DECIMAL)</th>
        </tr>
    </thead>
    <tbody>
        <%
            if (rs != null && rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("movie_id") %></td>
            <td><%= rs.getString("title") %></td>
            <td><%= rs.getString("genre") %></td>
            <td><%= rs.getInt("release_year") %></td>
            <td><%= rs.getDouble("rating") %></td>
        </tr>
        <%
            }
        %>
    </tbody>
</table>

<br>
<a href="updateSelect.jsp">Update Another Movie</a>
<br>
<a href="viewAllMovies.jsp">View All Movies</a>
<br>
<a href="index.jsp">Back to Index</a>

</body>
</html>
