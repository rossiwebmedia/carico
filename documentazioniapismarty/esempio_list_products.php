<?php

$ApiKey = 'XXX';
$LastUpdateFrom = '2021-12-14T10:00:00';

$ch = curl_init('https://www.gestionalesmarty.com/titanium/V2/Api/Products/list?ApiKey='.$ApiKey.'&last_update_from='.$LastUpdateFrom);
curl_setopt_array($ch, array(
    CURLOPT_POST => FALSE,
    CURLOPT_RETURNTRANSFER => TRUE,
    CURLOPT_CUSTOMREQUEST => 'GET',
    CURLOPT_SSL_VERIFYPEER => FALSE,
));

$response = curl_exec($ch);
echo $response;