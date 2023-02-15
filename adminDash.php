<!DOCTYPE html>
<html>
<head>
  <title>Admin Dashboard</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Admin Dashboard</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="adminDash.php?q=add">Add Users</a></li>
      <li><a href="adminDash.php?q=view">View Users</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="logout.php">Logout</a></li>
    </ul>
  </div>
</nav>

<div class="container">
  <?php
    if(isset($_GET['q'])) 
    {
      $q = $_GET['q'];
      // send to create user form
      if($q == "add")
      {
        echo "<script>location.href = 'createUserForm.html';</script>";
      } elseif($q == "view") 
      {
        echo "<script>location.href = 'viewUsers.php'</script>";
      }
    }
  ?>
</div>

</body>
</html>
