<?php
session_start();

require_once("connection.php");

if (isset($_GET['userId'])) 
{
    $userId = $_GET['userId'];

    $queryToggleSuspend = "UPDATE users SET suspended = 1 - suspended WHERE UserID = ?";
    $stmtToggleSuspend = mysqli_prepare($connection, $queryToggleSuspend);

    if ($stmtToggleSuspend === false) 
    {
        die('Error preparing statement: ' . mysqli_error($connection));
    }

    mysqli_stmt_bind_param($stmtToggleSuspend, "i", $userId);

    if (mysqli_stmt_execute($stmtToggleSuspend)) 
    {
        $newStatus = mysqli_fetch_assoc(mysqli_query($connection, "SELECT suspended FROM users WHERE UserID = $userId"))['suspended'];
        echo ($newStatus == 1) ? "Account suspended successfully." : "Account unsuspended successfully.";
    } 
    else 
    {
        echo "Error toggling the account suspension status: " . mysqli_error($connection);
    }

    mysqli_stmt_close($stmtToggleSuspend);
} 
else 
{
    echo "User ID not provided.";
}

mysqli_close($connection);
