<?php
    //connect to the MySQL database
    include_once 'conn2.php';
    //initialize score variable
    $score = 0;
    //query to select all questions and correct answers from the database
    $query = "SELECT * FROM answers";
    $result = mysqli_query($conn, $query);
    //loop through the questions
    while ($answer = mysqli_fetch_assoc($result))
     {
        $qid = $answer['qid'];
        //get the selected answer from the form
        if (isset($_POST['question'.$qid]))
         {
            $selected_answer = $_POST['question'.$qid];
        } else 
        {
            $selected_answer = 0;
        }
        $query1 = "SELECT option_id FROM app_options WHERE q_option = '$selected_answer'";
        $result1 = mysqli_query($conn, $query1);
        $row = mysqli_fetch_assoc($result1);
        //compare selected answer to correct answer
        if ($row !== null && $row['option_id'] == $answer['option_num'])
        {
            $select =$answer['option_num']; 
            $query2 = "SELECT Points FROM answers WHERE option_num='$select'";
            $result2 = mysqli_query($conn, $query2);
            $row2 = mysqli_fetch_assoc($result2);
            $score=$score+$row2['Points'];
        }
    }

    //close the MySQL connection
    mysqli_close($conn);
?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div style="text-align: center; padding-top: 30vh;">
    <div class="container">
        <h1>Cyber Insurance Application Results</h1>
        <p><br>You score reflects the number of controls in place or partially in place <?php echo $score;?></p>
        <?php if ($score < 100): ?>
            <p><br>Due to lack of severe controls in place your premium may be substantially higher</p>
        <?php elseif ($score > 100): ?>
                <p>Your organisation has a good security posture which will reflect on your premium</p>   
        <?php endif; ?>
    </div>
        </div>
</body>
</html>
