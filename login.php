<?php
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
    $result = $conn->query($sql);
    while($row = $result->fetch_assoc()) 
    { 
        $iv = hex2bin($row['IV']);
        $hashedUsername = openssl_encrypt($username, $ciphering, $encryption_key, $options, $iv);
        $hashedPassword = openssl_encrypt($password, $ciphering, $encryption_key, $options, $iv);
        if($hashedUsername == $row['username'] && $hashedPassword == $row['password'])
        {
            $passwordcheck = true;
            $usernamecheck = true;
            break;
        }
    }
    if($usernamecheck == true && $passwordcheck == true)
        {
            echo "<script>location.href = 'quiz.php';</script>"; 
        }
        else
        {
            echo "user doesnt exist";
        }
    mysqli_close($conn);
?>