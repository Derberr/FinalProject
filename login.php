<?php
    session_start();
    include_once 'conn.php'; 
    $ciphering = "AES-128-CTR";
    $iv_length = openssl_cipher_iv_length($ciphering);
    $options   = 0;
    $encryption_key = "crypto";
    $password = $_POST['password'];
    $username = $_POST['username'];
    $passwordcheck = false;
    $usernamecheck = false;
    $sql = 'SELECT IV,username,password FROM users';
    $stmt = mysqli_prepare($conn, $sql);
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    while ($row = mysqli_fetch_assoc($result)) 
    { 
        $iv = hex2bin($row['IV']);
        $hashedUsername = openssl_encrypt($username, $ciphering, $encryption_key, $options, $iv);
        $hashedPassword = openssl_encrypt($password, $ciphering, $encryption_key, $options, $iv);
        $_SESSION['username'] = $hashedUsername;
        $sql1 = 'SELECT IV,username,password FROM users WHERE username = ? AND password = ?';
        $stmt1 = mysqli_prepare($conn, $sql1);
        mysqli_stmt_bind_param($stmt1, "ss", $hashedUsername, $hashedPassword);
        mysqli_stmt_execute($stmt1);
        $result1 = mysqli_stmt_get_result($stmt1);
        if (mysqli_num_rows($result1) > 0) 
        {
            $passwordcheck = true;
            $usernamecheck = true;
            break;
        }
    }
    if($usernamecheck == true && $passwordcheck == true) 
    {
        echo "<script>location.href = 'quiz.php';</script>"; 
    } else {
        echo "user doesn't exist";
    }
    mysqli_close($conn);
?>