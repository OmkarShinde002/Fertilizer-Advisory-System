<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <link rel="stylesheet" href="Login.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  <!-- External scripts -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

<!--<img src="Agriculture.jpg">-->
<div class="main">
  <div class="navbar" style="width: 100%; margin-bottom: 7rem;">
    <div class="icon">
      <h1 class="logo">FAS</h1>
    </div>
    <div class="menu" style="margin-left: 7rem">
      <ul>
        <li><a href="#">HOME</a></li>
        <li><a href="#">CALCULATE</a></li>
        <li><a href="#">HELP</a></li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            LOGIN
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="ViewRecords.jsp" style="color: black">Admin login</a>
            <a class="dropdown-item" href="ViewRecords.jsp" style="color: black">Expert login</a>
        </li>
      </ul>
    </div>
    <div class="search" style="margin-left: 25rem">
      <input class="srch" type="search" name="" placeholder="Type to text">
      <a href="#"><button class="btn" style="background-color: limegreen">Search</button></a>
    </div>
  </div>
  <div class="content">
    <h1>This is a basic problem,<br>to feed 6.6 billion people.<br></h1>
    <p class="par">Without fertilizer, forget it.<br>The game is over.</p>

    <div class="form" style="width: 300px">
      <!-- form -->
      <form action="Login" method="post">
        <h2>Login here</h2>

        <input type="text" name="uname" placeholder="Enter username">
        <input type="password" name="pass" placeholder="Enter password">
        <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
        <% if (errorMessage != null) { %>
        <p style="color: red; margin-top: 3rem;" ><%= errorMessage %></p>
        <% } %>
        <div class="button">
          <input type="submit" value="login" name="submit">
        </div>
        <p class="link">Don't have an account<br>
          <a href="Registration.jsp">Sign up here</a></p>
      </form>
    </div>
  </div>
</div>
</body>

</html>