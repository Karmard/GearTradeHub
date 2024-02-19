<?php
session_start();
if (!isset($_SESSION['UserID'])) 
{
    header("Location: login.php");
    exit();
}

require_once("connection.php");

$queryUsers = "SELECT u.UserID, u.username, u.email, u.wnumber, u.usertype, u.approval_status, p.pFname, p.pLname, s.showname, u.suspended
                FROM users u
                LEFT JOIN personallog p ON u.UserID = p.UserID
                LEFT JOIN showroomlog s ON u.UserID = s.UserID";

$resultUsers = mysqli_query($connection, $queryUsers);

mysqli_close($connection);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registered Users</title>
    <link rel="stylesheet" href="admin.css">
    <link rel="stylesheet" href="registered_users.css">
</head>
<body>
    <header>
        <h1>Registered Users</h1>

        <div class="search-bar">
            <input type="text" id="searchInput" placeholder="Search for cars">
            <button type="button" onclick="searchCars()">Search</button>
        </div>
    </header>

    <div class="navbar-icon" onclick="toggleNavbar()">
        <i class="fas fa-bars" style="font-size: 24px; color: white;"></i>
    </div>

    <div class="content-container">
        <table>
            <thead>
                <tr>
                    <th>User ID</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>W-Number</th>
                    <th>User Type</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Showroom Name</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($user = mysqli_fetch_assoc($resultUsers)) : ?>
                    <tr data-user-id="<?= $user['UserID'] ?>">
                        <td><?= $user['UserID'] ?></td>
                        <td><?= $user['username'] ?></td>
                        <td><?= $user['email'] ?></td>
                        <td><?= $user['wnumber'] ?></td>
                        <td><?= $user['usertype'] ?></td>
                        <td><?= $user['pFname'] ?></td>
                        <td><?= $user['pLname'] ?></td>
                        <td><?= $user['showname'] ?></td>
                        <td>
                        
                            <button onclick="viewUser(<?= $user['UserID'] ?>)">View</button>
                            <button class="suspend-button" data-user-id="<?= $user['UserID'] ?>" onclick="suspendUser(<?= $user['UserID'] ?>)">
                <?= ($user['suspended'] == 1) ? 'Unsuspend' : 'Suspend' ?>
            </button>                            <button onclick="deleteAccount(<?= $user['UserID'] ?>)">Delete Account</button>
                        </td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>

        <button class="back-button" onclick="goBack()">Back to Admin Home</button>
    </div>

    <script>
        function toggleNavbar() 
        {
        }

        function viewUser(userId) 
        {
            window.location.href = 'user_details.php?userId=' + userId;
        }

        function suspendUser(userId) 
        {
            var confirmSuspend = confirm("Are you sure you want to suspend the account?");

            if (confirmSuspend) 
            {
                var xhr = new XMLHttpRequest();

                xhr.open("GET", "suspend_account.php?userId=" + userId, true);

                xhr.onreadystatechange = function () 
                {
                    if (xhr.readyState == 4 && xhr.status == 200) 
                    {
                        alert(xhr.responseText);

                        if (xhr.responseText === "Account suspended successfully." || xhr.responseText === "Account unsuspended successfully.") 
                        {
                            // Perform any necessary UI updates here
                            var suspendedRow = document.querySelector("tr[data-user-id='" + userId + "']");
                            var suspendButton = suspendedRow.querySelector(".suspend-button");

                            if (xhr.responseText === "Account suspended successfully.") 
                            {
                                suspendButton.textContent = "Unsuspend";
                            } 
                            else 
                            {
                                suspendButton.textContent = "Suspend";
                            }
                        }
                    }
                };

                xhr.send();
            } else {
                console.log('Suspension canceled by admin');
            }
        }

        function deleteAccount(userId) 
        {
            console.log('Delete Account:', userId);
        }

        function goBack() 
        {
            window.location.href = 'admin.php';
        }
    </script>
</body>
</html>
