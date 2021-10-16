<?php
if (function_exists($_GET['function'])) {
    $_GET['function']();
}

function sendPushNotification()
{
    $fcm_token = $_POST["fcm_token"];
    $title = $_POST["title"];
    $message = $_POST["message"];

    $url = "https://fcm.googleapis.com/fcm/send";
    $header = [
        'Authorization: key=AAAAAKlWRq8:APA91bGGwqULLw95vpWHSYCylqE3-cHYiTH6jOTvppODkiGmiWzKcnwDvsTNQagKi4rD_QErEZ7VAEL-GqRURMWji9EoUv0Gp0RhzY5rKMuOM9Ji_05cffVzm0C8rmTvP74aQ5YT3zSO',
        'content-type: application/json'
    ];

    $notification = array(
        'title' => $title,
        'body' => $message
    );

    // Jika menggunakan Token
    $fcmNotification = array(
        'to' => $fcm_token,
        'notification' => $notification
    );

    // Jika menggunakan TOPIC
    // $fcmNotification = array(
    //     'to' => '/topics/myTopic',
    //     'notification' => $notification
    // );

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 60);
    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fcmNotification));
    curl_setopt($ch, CURLOPT_HTTPHEADER, $header);

    $result = curl_exec($ch);
    curl_close($ch);
    header('Content-Type: application/json');
    echo $result;
}
 ?>