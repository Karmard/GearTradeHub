<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'phpmailer/src/Exception.php';
require 'phpmailer/src/PHPMailer.php';
require 'phpmailer/src/SMTP.php';

if (isset($_POST["send"])) 
{
    // CHECK IF EMAIL IS SET BEFORE USING
    $email = isset($_POST["email"]) ? $_POST["email"] : "";

    $mail = new PHPMailer(true);

    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $mail->Username = 'tomkarma13@gmail.com';
    $mail->Password = 'hctkkujdhaljaztw';
    $mail->SMTPSecure = 'tls';
    $mail->Port = 587;

    // SET "FROM" ADDRESS TO USER'S EMAIL

    $mail->setFrom($email);

    // SET THE  "Reply-To" HEADER TO THE USER'S EMAIL
    $mail->addReplyTo($email);

    // SET RECIPIENTS EMAIL ADDRESS
    $mail->addAddress('tomkarma13@gmail.com');

    $mail->isHTML(true);

    $mail->Subject = $_POST["subject"];
    $mail->Body = nl2br($_POST["message"]);

    $mail->send();

    echo "
        <script>
        alert('Email sent successfully, our agent will get back to you shortly');
        document.location.href = 'help.html';
        </script>
    ";
}
