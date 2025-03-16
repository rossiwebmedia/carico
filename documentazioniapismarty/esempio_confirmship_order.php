<?php

$ApiKey = 'XXX';
$orderId = 123;

$ch = curl_init('https://www.gestionalesmarty.com/titanium/V2/Api/Sales_Orders/confirmShip/'.$orderId.'?ApiKey='.$ApiKey);

$payload = json_encode(
    array(
        'carrier' => 'GLS',
        'tracking' => '123456789',
    )
);

curl_setopt_array($ch, array(
    CURLOPT_POST => TRUE,
    CURLOPT_RETURNTRANSFER => TRUE,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_SSL_VERIFYPEER => FALSE,
    CURLOPT_HTTPHEADER => array(
        'Content-Type: application/json'
    ),
    //opzionale per aggiornare i dati di spedizione
    CURLOPT_POSTFIELDS => $payload,
));

curl_exec($ch);