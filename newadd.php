<?php

include 'connection.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $newAddress = mysqli_real_escape_string($conn, $_POST['newAddress']);
    $newPhoneNumber = mysqli_real_escape_string($conn, $_POST['newPhoneNumber']);
    $uid = mysqli_real_escape_string($conn, $_POST['uid']);

    // Attempt to insert the address
    $sql = "INSERT INTO details (UserId, Address, PhoneNumber) VALUES ('$uid', '$newAddress', '$newPhoneNumber')";

    if (mysqli_query($conn, $sql)) {
        echo 'Address added successfully';
    } else {
        // Check if the error is related to the trigger (user exceeding 3 addresses)
        $errorInfo = mysqli_error($conn);
        if (strpos($errorInfo, 'User cannot have more than 3 addresses') !== false) {
            echo 'Error: User cannot have more than 3 addresses';
        } else {
            // Handle other errors
            echo 'Error: ' . $errorInfo;
        }
    }
} else {
    echo 'Invalid request';
}
?>
