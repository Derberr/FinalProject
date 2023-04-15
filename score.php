<?php
session_start();
    if(isset($_SESSION["Active"]) && $_SESSION["Active"] === true) 
    {
        goto label;
    } 
    else 
    {
    // Kick back to login
    header("location: login.html");
    }
    label:
     //connect to the MySQL database
     include_once 'conn2.php';
     //initialize score variable
     $score = 0;
     //initialize nocontrol variable
     $nocontrol = 0;
     //initialize noinsure variable
     $noInsure = false;
     //query to select all questions and correct answers from the database
     $query = "SELECT * FROM answers";
     $stmt = mysqli_prepare($conn, $query);
     mysqli_stmt_execute($stmt);
     $result = mysqli_stmt_get_result($stmt);
     //loop through the questions
     while ($answer = mysqli_fetch_assoc($result)) {
         $qid = $answer['qid'];
         //get the selected answer from the form
         if (isset($_POST['question'.$qid])) {
             $selected_answer = $_POST['question'.$qid];
         } else {
             $selected_answer = 0;
         }
         $query1 = "SELECT option_id FROM app_options WHERE q_option = ?";
         $stmt1 = mysqli_prepare($conn, $query1);
         mysqli_stmt_bind_param($stmt1, "s", $selected_answer);
         mysqli_stmt_execute($stmt1);
         $result1 = mysqli_stmt_get_result($stmt1);
         $row = mysqli_fetch_assoc($result1);
         //compare selected answer to correct answer
         if ($row !== null && $row['option_id'] == $answer['option_num']) {
             $select = $answer['option_num']; 
             $query2 = "SELECT Points FROM answers WHERE option_num = ?";
             $stmt2 = mysqli_prepare($conn, $query2);
             mysqli_stmt_bind_param($stmt2, "i", $select);
             mysqli_stmt_execute($stmt2);
             $result2 = mysqli_stmt_get_result($stmt2);
             $row2 = mysqli_fetch_assoc($result2);
             $score = $score + $row2['Points'];
             if($row2['Points'] <= 0)
             {
                $nocontrol++;

             }
         }
     }
     if($nocontrol >= 8)
     {
         $noInsure = true;
         // check for $noInsure here
        if ($noInsure == true) 
        {
            echo "<style>
            .noinsure
            {   
                width:100%;
                padding-right:15px;
                padding-left:15px;
                margin-right:auto;
                margin-left:auto;
                position: absolute;
                top: 60%;
                transform: translateY(-50%);
            }
                </style>";
            echo "<div class='noinsure' style='text-align: center;color: lightcoral;'><br><p><strong>You may not be able to obtain Insurance due to the lack of significant controls, please contact 01-5987564</strong></p></div>";
        }
     }
     $susername = $_SESSION['username'];
     $query2 = "INSERT into score (username,score) values (?,?)";
     $stmt2 = mysqli_prepare($conn, $query2);
     mysqli_stmt_bind_param($stmt2, "si", $susername,$score);
     mysqli_stmt_execute($stmt2);
     //close the MySQL connection
     mysqli_close($conn);
?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <style>
    .navbar {
      display: flex;
      justify-content: center;
      background-color: #000;
    }

    .navbar a {
      color: #fff;
      margin: 0 10px;
    }
  </style>
</head>
	
<body class="bg-dark">
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
        <h2 class="navbar-brand" style ="color :white">Application</h2>
      </div>
      <ul class="nav navbar-nav mx-auto"> <!-- Update the class to mx-auto for center alignment -->
        <li><a href="logout.php">Logout</a></li> <!-- Update the class for right alignment if needed -->
      </ul>
    </div>
  </nav>
	
<div style="text-align: center; padding-top: 30vh;color: white ;">
    <div class="container">
        <h1>Cyber Insurance Application Results</h1>
        <p><br><strong>Your score reflects the number of controls in place or partially in place: <br> <?php echo $score;?></strong></p>
        <?php if ($score < 100): ?>
            <p><strong>Due to lack of severe controls in place your premium may be substantially higher</strong></p>
        <?php elseif ($score > 100): ?>
                <p><br><strong>Your organisation has a good security posture which will reflect on your premium</strong></p>   
        <?php endif; ?>
    </div>
    </div>
	
	
</body>
</html>