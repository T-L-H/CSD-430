<!DOCTYPE html>
<html>
<body>

<form action="feedback_results.jsp" method="post">

  Name:<br>
  <input type="text" name="name"><br><br>

  Email:<br>
  <input type="text" name="email"><br><br>

  Rating:<br>
  <input type="radio" name="rating" value="1">1
  <input type="radio" name="rating" value="2">2
  <input type="radio" name="rating" value="3">3
  <input type="radio" name="rating" value="4">4
  <input type="radio" name="rating" value="5">5
  <br><br>

  Category:<br>
  <select name="category">
    <option value="Service">Service</option>
    <option value="Product">Product</option>
    <option value="Experience">Experience</option>
  </select>
  <br><br>

  Comments:<br>
  <textarea name="comments"></textarea>
  <br><br>

  <input type="submit" value="Submit">

</form>

</body>
</html>
