<?php

$ApiKey = 'XXX';
$txtSearch = 'email@esempio.com';

$ch = curl_init('https://www.gestionalesmarty.com/titanium/V2/Api/Customers/list?ApiKey='.$ApiKey.'&text='.$txtSearch);
curl_setopt_array($ch, array(
    CURLOPT_POST => FALSE,
    CURLOPT_RETURNTRANSFER => TRUE,
    CURLOPT_CUSTOMREQUEST => 'GET',
    CURLOPT_SSL_VERIFYPEER => FALSE,
));

$response = curl_exec($ch);
echo $response;