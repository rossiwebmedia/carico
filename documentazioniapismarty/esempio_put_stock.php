<?php

$ApiKey = 'XXX';
$productId = 1;
$qty = 10;

//

/////////////// PRODOTTO

$ch = curl_init('https://www.gestionalesmarty.com/titanium/V2/Api/Products/put/'.$productId.'?ApiKey='.$ApiKey);

$payload = json_encode(
    array(
        'stock' => $qty
    )
);


curl_setopt_array($ch, array(
    CURLOPT_POST => TRUE,
    CURLOPT_RETURNTRANSFER => TRUE,
    CURLOPT_HTTPHEADER => array(
        'Content-Type: application/json'
    ),
    CURLOPT_POSTFIELDS => $payload,
    CURLOPT_CUSTOMREQUEST => 'PUT',
    CURLOPT_SSL_VERIFYPEER => FALSE,
));

$response = curl_exec($ch);
echo $response;

/////////////// VARIANTE

$productId = 1;
$variationId = 1;

$ch = curl_init('https://www.gestionalesmarty.com/titanium/V2/Api/Variations/put/'.$variationId.'?ApiKey='.$ApiKey);

$payload = json_encode(
    array(
        'product_id' => $productId,
        'stock' => $qty
    )
);


curl_setopt_array($ch, array(
    CURLOPT_POST => TRUE,
    CURLOPT_RETURNTRANSFER => TRUE,
    CURLOPT_HTTPHEADER => array(
        'Content-Type: application/json'
    ),
    CURLOPT_POSTFIELDS => $payload,
    CURLOPT_CUSTOMREQUEST => 'PUT',
    CURLOPT_SSL_VERIFYPEER => FALSE,
));

$response = curl_exec($ch);
echo $response;

