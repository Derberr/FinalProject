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
            <th>ID</th>
            <th>Username</th>
            <th>Password</th>
            <th>Company</th>
          </tr>
        </thead>
        <tbody>
          <?php
            // Connect to database
            include_once 'conn.php'; 
            $ciphering = "AES-128-CTR";
            $encryption_key = "crypto";
            $options = 0;
            // Retrieve data from database
            $sql = "SELECT * FROM users";
            $result = mysqli_query($conn, $sql);
            // Loop through data and display in table
            while ($row = mysqli_fetch_assoc($result))
            {
                $encryption_iv = hex2bin($row['IV']);
                $username = openssl_decrypt($row['username'], $ciphering, $encryption_key, $options, $encryption_iv); 
                //if you want to decrypt the password uncomment line below
                //$password = openssl_decrypt($row['password'], $ciphering, $encryption_key, $options, $encryption_iv);
                $company = openssl_decrypt($row['company'], $ciphering, $encryption_key, $options, $encryption_iv);
                echo "<tr>";
                echo "<td>" . $row['ID'] . "</td>";
                echo "<td>" . $username . "</td>";
                echo "<td>" . "********" . "</td>";
                echo "<td>" . $company . "</td>";
                echo "</tr>";
            }
            // Close database connection
            mysqli_close($conn);
          ?>
        </tbody>
      </table>
    </div>
  </body>
</html>
