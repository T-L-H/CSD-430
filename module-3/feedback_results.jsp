<%
  String name = request.getParameter("name");
  String email = request.getParameter("email");
  String rating = request.getParameter("rating");
  String category = request.getParameter("category");
  String comments = request.getParameter("comments");
%>

<!DOCTYPE html>
<html>
<body>

<table border="1">
  <tr>
    <th>Field</th>
    <th>Value</th>
  </tr>
  <tr>
    <td>Name</td>
    <td><%= name %></td>
  </tr>
  <tr>
    <td>Email</td>
    <td><%= email %></td>
  </tr>
  <tr>
    <td>Rating</td>
    <td><%= rating %></td>
  </tr>
  <tr>
    <td>Category</td>
    <td><%= category %></td>
  </tr>
  <tr>
    <td>Comments</td>
    <td><%= comments %></td>
  </tr>
</table>

</body>
</html>
