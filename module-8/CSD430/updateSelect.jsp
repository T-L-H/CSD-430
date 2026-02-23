<%@ page import="java.util.*, beans.MovieBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Movie</title>
</head>
<body>

<h2>Update a Movie Record</h2>
<p>Select a Movie ID to update.</p>

<%
    MovieBean bean = new MovieBean();
    ArrayList<Integer> ids = bean.getMovieIds();
%>

<form action="updateForm.jsp" method="get">
    <label>Movie ID:</label><br>
    <select name="movie_id">
        <% for (int id : ids) { %>
            <option value="<%= id %>"><%= id %></option>
        <% } %>
    </select>

    <br><br>
    <input type="submit" value="Load Movie">
</form>

<br>
<a href="index.jsp">Back to Index</a>

</body>
</html>
