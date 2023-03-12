<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
      .container
      {
        margin-top: 20px;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h1 class="text-center">User List</h1>
      <table class="table table-striped">
        <thead>
          <tr>
            <th>Username</th>
            <th>Score</th>
          </tr>
        </thead>
        <tbody>
        <?php
              
              // Loop through data and display in table
              
                include_once 'conn2.php'; 
                $sql1 = "SELECT * FROM score";
                $stmt1 = mysqli_prepare($conn, $sql1);
                mysqli_stmt_execute($stmt1);
                $result1 = mysqli_stmt_get_result($stmt1);
                while ($row1 = mysqli_fetch_assoc($result1))
                {
                  // Connect to database
                include_once 'conn.php';
                $ciphering = "AES-128-CTR";
                $encryption_key = "crypto";
                $options = 0;
                // Retrieve data from database
                $sql = "SELECT IV FROM users WHERE username=?";
                $stmt = mysqli_prepare($conn, $sql);
                mysqli_stmt_bind_param($stmt, "s", $row1['username']);
                mysqli_stmt_execute($stmt);
                $result = mysqli_stmt_get_result($stmt);
                while ($row = mysqli_fetch_assoc($result)) 
                {
                  $encryption_iv = hex2bin($row['IV']);
                  $username = openssl_decrypt($row1['username'], $ciphering, $encryption_key, $options, $encryption_iv); 
                  $score = $row1['score'];
                  echo "<tr>";
                  echo "<td>" . $username . "</td>";
                  echo "<td>" . $score . "</td>";
                  echo "</tr>";
                }
              }
              // Close database connection
              mysqli_stmt_close($stmt);
              mysqli_close($conn);
          ?>

        </tbody>
      </table>
    </div>
  </body>
</html>