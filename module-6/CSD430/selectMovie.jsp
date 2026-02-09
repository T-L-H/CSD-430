<%@ page import="java.util.*, beans.MovieBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Select Movie</title>
</head>
<body>

<h2>Select a Movie</h2>

<%
    MovieBean bean = new MovieBean();
    ArrayList<Integer> ids = bean.getMovieIds();
%>

<form action="displayMovie.jsp" method="get">
    <select name="movie_id">
        <% for (int id : ids) { %>
            <option value="<%= id %>"><%= id %></option>
        <% } %>
    </select>
    <br><br>
    <input type="submit" value="View Movie">
</form>

</body>
</html>
