<%@ page import="beans.MovieBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Movie</title>
</head>
<body>

<h2>Add a New Movie Record</h2>
<p>Enter movie information below to insert a new record into the database.</p>

<%
    String title = request.getParameter("title");
    String genre = request.getParameter("genre");
    String releaseYearStr = request.getParameter("release_year");
    String ratingStr = request.getParameter("rating");

    boolean submitted = (title != null && genre != null && releaseYearStr != null && ratingStr != null);

    if (submitted) {
        MovieBean bean = new MovieBean();

        int releaseYear = Integer.parseInt(releaseYearStr);
        double rating = Double.parseDouble(ratingStr);

        bean.addMovie(title, genre, releaseYear, rating);
%>

<h3>Movie successfully added!</h3>
<p><a href="viewAllMovies.jsp">Click here to view all movies</a></p>

<%
    }
%>

<form action="addMovie.jsp" method="post">
    <label>Title:</label><br>
    <input type="text" name="title" required><br><br>

    <label>Genre:</label><br>
    <input type="text" name="genre" required><br><br>

    <label>Release Year:</label><br>
    <input type="number" name="release_year" required><br><br>

    <label>Rating:</label><br>
    <input type="number" step="0.1" name="rating" required><br><br>

    <input type="submit" value="Add Movie">
</form>

<br>
<a href="index.jsp">Back to Index</a>

</body>
</html>
