<%@ page import="java.sql.*, beans.MovieBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Movies</title>
</head>
<body>

<h2>All Movie Records</h2>
<p>This table displays every record currently stored in the database.</p>

<%
    MovieBean bean = new MovieBean();
    ResultSet rs = bean.getAllMovies();
%>

<table border="1">
    <thead>
        <tr>
            <th>Movie ID</th>
            <th>Title</th>
            <th>Genre</th>
            <th>Release Year</th>
            <th>Rating</th>
        </tr>
    </thead>
    <tbody>
        <%
            while (rs != null && rs.next()) {
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
<a href="addMovie.jsp">Add Another Movie</a>
<br>
<a href="index.jsp">Back to Index</a>

</body>
</html>
