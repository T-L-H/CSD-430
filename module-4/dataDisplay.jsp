<%@ page import="java.util.ArrayList" %>
<%@ page import="beans.FloridaTripBean" %>

<%
    String title = "Why Florida is pretty cool, by yours truly.";
    String overall = "I visited Florida on vacation, and here are some of the places that I visited!";
    String fieldDesc = "Fields: Place I went, Cool Moment, Rating.";
    String recordDesc = "Each record represents one activity from the trip.";

    ArrayList<FloridaTripBean> records = new ArrayList<>();

    FloridaTripBean r1 = new FloridaTripBean();
    r1.setTripTitle(title);
    r1.setOverallDescription(overall);
    r1.setRecordDescription(recordDesc);
    r1.setPlace("Eye of Orlando");
    r1.setCoolMoment("Rode a huge ferris wheel");
    r1.setRating("9/10");
    records.add(r1);

    FloridaTripBean r2 = new FloridaTripBean();
    r2.setPlace("Murder Mystery Dinner");
    r2.setCoolMoment("Almost solved the murder...");
    r2.setRating("8/10");
    records.add(r2);

    FloridaTripBean r3 = new FloridaTripBean();
    r3.setPlace("Pirate Dinner");
    r3.setCoolMoment("Somebody walked the plank");
    r3.setRating("7/10");
    records.add(r3);

    FloridaTripBean r4 = new FloridaTripBean();
    r4.setPlace("Mini Golf");
    r4.setCoolMoment("Got a hole in one accidentally");
    r4.setRating("7/10");
    records.add(r4);

    FloridaTripBean r5 = new FloridaTripBean();
    r5.setPlace("Escape Rooms");
    r5.setCoolMoment("Did not lose a single one");
    r5.setRating("8/10");
    records.add(r5);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JavaBean Data Display</title>
    <style>
        table { border-collapse: collapse; width: 90%; }
        th, td { border: 1px solid black; padding: 8px; }
        th { background-color: #f0f0f0; }
    </style>
</head>
<body>

<h1><%= title %></h1>

<p><strong>Overall Description:</strong> <%= overall %></p>
<p><strong>Field Description:</strong> <%= fieldDesc %></p>
<p><strong>Record Description:</strong> <%= recordDesc %></p>

<table>
    <tr>
        <th>#</th>
        <th>Place</th>
        <th>Cool Moment</th>
        <th>Rating</th>
    </tr>

    <%
        for (int i = 0; i < records.size(); i++) {
            FloridaTripBean b = records.get(i);
    %>
    <tr>
        <td><%= i + 1 %></td>
        <td><%= b.getPlace() %></td>
        <td><%= b.getCoolMoment() %></td>
        <td><%= b.getRating() %></td>
    </tr>
    <%
        }
    %>
</table>

</body>
</html>
