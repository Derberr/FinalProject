<?php
session_start();
if(isset($_SESSION["Active"]) && $_SESSION["Active"] === true) 
{
  goto label;
} 
else 
{
  // Kick back to login
  header("location: index.html");
}
label:
?>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script>
    $(document).ready(function() {
        //hide all questions except the first one
        $('.card').hide();
        $('.card').first().show();

        //when the user submits an answer
        $('.next-button').on('click', function() {
            //show the next question
            $(this).closest('.card').next('.card').show();
            //hide the current question
            $(this).closest('.card').hide();
        });
    });

</script>
<link rel="stylesheet" type="text/css" href="css/index.css" />
        <link rel="shortcut icon" type="image/png" href="image/logo.png" />
        <style type="text/css">
            body {
                width: 100%;
                background: url(image/book.png) ;
                background-position: center center;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
            }
        </style>
</head>
<body>
<!-- Trigger button to open the modal -->
<div class="intro">
<h1>Please take the application below</h1>
<h1 class ='bar'></h1>
<button type="button" id= "modal" class="btn btn-primary" data-toggle="modal" data-target="#quizModal">Take Application</button>
</div>
<!-- Modal -->
<div id="quizModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="quizModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="quizModalLabel">Cyber Insurance Application</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="score.php" method="post">
        <?php
          //connect to the MySQL database
          include_once 'conn2.php'; 
          //query to select all questions and options from the database
          $query = "SELECT * FROM questions WHERE is_available = ?";
              $stmt = mysqli_prepare($conn, $query);
              $is_available = 1;
              mysqli_stmt_bind_param($stmt, "i", $is_available);
              mysqli_stmt_execute($stmt);
              $result = mysqli_stmt_get_result($stmt);
              //loop through the questions
              while ($question = mysqli_fetch_assoc($result)) {
                ?>
                  <div class="card">
                      <div class="card-header">
                          <h3 class="card-title"><?php echo $question['question']; ?></h3>
                      </div>
                      <div class="card-body">
                          <?php
                          $qid = $question['qid'];
                          //query to select all options for the current question
                          $options_query = "SELECT * FROM app_options WHERE qid = ? AND is_available = ?";
                          $stmt1 = mysqli_prepare($conn, $options_query);
                          $is_available = 1;
                          mysqli_stmt_bind_param($stmt1, "ii", $qid, $is_available);
                          mysqli_stmt_execute($stmt1);
                          $options_result = mysqli_stmt_get_result($stmt1);
                          //loop through the options
                          
                          while ($option = mysqli_fetch_assoc($options_result))
                          {
                          ?>
                              <div style=display: flex; justify-content: center; class="form-check">
                              <input class="form-check-input" type="radio" name="question<?php echo $option['qid']; ?>" id="option<?php echo $option['option_id']; ?>" value="<?php echo $option['q_option']; ?>">
                              <label class="form-check-label" for="option<?php echo $option['option_id']; ?>"><?php echo $option['q_option']; ?></label>
                              </div>
                              <?php
                          }
                        
                          ?>
                          <br>
                          <button type="button" class=" btn-primary next-button">Next</button>
                      </div>
                  </div>
              <?php
              }
              //close the MySQL connection
              mysqli_close($conn);
          ?>
        
      <div class="modal-footer">
      <input type="submit" value="Submit Application" class=" btn-primary">
        <button type="button" class=" btn-secondary" data-dismiss="modal">Close</button>
        </div>
        </form>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</html>