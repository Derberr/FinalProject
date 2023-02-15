<?php
    session_start();
    include_once 'conn.php'; 
    $ciphering = "AES-128-CTR";
    $iv_length = openssl_cipher_iv_length($ciphering);
    $options   = 0;
    $encryption_iv = random_bytes(16);
    $biniv = bin2hex($encryption_iv);   //creating use for decryption
    $encryption_key = "crypto";
    $username = $_POST['username'];
    $password = $_POST['password'];
    $company = $_POST['company'];

    //Encryption block
    $hashedUsername = openssl_encrypt($username, $ciphering, $encryption_key, $options, $encryption_iv); 
    $hashedPassword = openssl_encrypt($password, $ciphering, $encryption_key, $options, $encryption_iv);
    $hashedCompany = openssl_encrypt($company, $ciphering, $encryption_key, $options, $encryption_iv);

    $sql = "INSERT INTO users (ID,IV,username,password,company) VALUES (NULL,'$biniv','$hashedUsername','$hashedPassword','$hashedCompany')";
    if(mysqli_query($conn, $sql)) //catching db errors
    {
     echo "<script>location.href = 'adminDash.php';</script>";
    } 
    else 
    {
        echo $sql;
    }
    mysqli_close($conn); 
?>

