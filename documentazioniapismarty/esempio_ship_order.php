<?php

$ApiKey = 'XXX';
$orderId = 123;

$ch = curl_init('https://www.gestionalesmarty.com/titanium/V2/Api/Sales_Orders/ship/'.$orderId.'?ApiKey='.$ApiKey);

curl_setopt_array($ch, array(
    CURLOPT_POST => TRUE,
    CURLOPT_RETURNTRANSFER => TRUE,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_SSL_VERIFYPEER => FALSE,
));

curl_exec($ch);