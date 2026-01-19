<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Why Florida is pretty cool, by yours truly</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

<h1>Why Florida is pretty cool, by yours truly</h1>

<p>
I visited Florida on vacation, and here are some of the places that I visited!
</p>

<h3>Field Descriptions</h3>
<ul>
    <li><strong>Place I Went:</strong> The location or activity I visited in Florida.</li>
    <li><strong>Cool Moment:</strong> Something memorable that happened there.</li>
    <li><strong>Rating:</strong> How much I enjoyed it out of 10.</li>
</ul>

<h3>Record Description</h3>
<p>
Each record represents a place I visited in Florida along with a memorable moment and my personal rating.
</p>

<%
    String[][] data = {
        {"Eye of Orlando", "Rode a huge ferris wheel", "9/10"},
        {"Murder Mystery Dinner", "Almost solved the murder...", "8/10"},
        {"Pirate Dinner", "Somebody walked the plank", "7/10"},
        {"Mini Golf", "Got a hole in 1 accidentally", "7/10"},
        {"Escape Rooms", "I don't think I lost one...", "8/10"}
    };
%>

<table>
    <tr>
        <th>Place I Went</th>
        <th>Cool Moment</th>
        <th>Rating</th>
    </tr>

    <%
        for (int i = 0; i < data.length; i++) {
    %>
    <tr>
        <td><%= data[i][0] %></td>
        <td><%= data[i][1] %></td>
        <td><%= data[i][2] %></td>
    </tr>
    <%
        }
    %>
</table>

</body>
</html>
