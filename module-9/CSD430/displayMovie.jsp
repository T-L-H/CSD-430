<%@ page import="java.sql.*, beans.MovieBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Movie Details</title>
</head>
<body>

<h2>Movie Details</h2>

<%
    int movieId = Integer.parseInt(request.getParameter("movie_id"));
    MovieBean bean = new MovieBean();
    ResultSet rs = bean.getMovieById(movieId);
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
<a href="selectMovie.jsp">Back</a>

</body>
</html>
