<%@ page import="java.sql.*, java.util.*, beans.MovieBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Movie Record</title>
</head>
<body>

<h2>Delete Movie Records</h2>
<p>Select a Movie ID to delete. All records are displayed below.</p>

<%
    MovieBean bean = new MovieBean();

    String deleteIdStr = request.getParameter("movie_id");

    if (deleteIdStr != null) {
        int deleteId = Integer.parseInt(deleteIdStr);
        bean.deleteMovie(deleteId);
    }

    ResultSet rs = bean.getAllMovies();
    ArrayList<Integer> ids = bean.getMovieIds();
%>

<form method="post" action="deleteMovie.jsp">
    <label>Select Movie ID to Delete:</label><br>
    <select name="movie_id">
        <% for (int id : ids) { %>
            <option value="<%= id %>"><%= id %></option>
        <% } %>
    </select>
    <br><br>
    <input type="submit" value="Delete Movie">
</form>

<br><br>

<h3>Current Records in Database</h3>

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
<a href="index.jsp">Back to Index</a>

</body>
</html>