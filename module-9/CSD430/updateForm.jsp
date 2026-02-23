<%@ page import="java.sql.*, beans.MovieBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Movie</title>
</head>
<body>

<h2>Edit Movie Record</h2>
<p>Update the fields below and submit the form.</p>

<%
    int movieId = Integer.parseInt(request.getParameter("movie_id"));

    MovieBean bean = new MovieBean();
    ResultSet rs = bean.getMovieById(movieId);

    String title = "";
    String genre = "";
    int releaseYear = 0;
    double rating = 0.0;

    if (rs != null && rs.next()) {
        title = rs.getString("title");
        genre = rs.getString("genre");
        releaseYear = rs.getInt("release_year");
        rating = rs.getDouble("rating");
    }
%>

<form action="updateResult.jsp" method="post">

    <label>Movie ID (cannot be changed):</label><br>
    <b><%= movieId %></b>
    <input type="hidden" name="movie_id" value="<%= movieId %>">

    <br><br>

    <label>Title:</label><br>
    <input type="text" name="title" value="<%= title %>" required>

    <br><br>

    <label>Genre:</label><br>
    <input type="text" name="genre" value="<%= genre %>" required>

    <br><br>

    <label>Release Year:</label><br>
    <input type="number" name="release_year" value="<%= releaseYear %>" required>

    <br><br>

    <label>Rating:</label><br>
    <input type="number" step="0.1" name="rating" value="<%= rating %>" required>

    <br><br>

    <input type="submit" value="Update Movie">

</form>

<br>
<a href="updateSelect.jsp">Back</a>

</body>
</html>
