<?php

$ApiKey = 'XXX';

//

$ch = curl_init('https://www.gestionalesmarty.com/titanium/V2/Api/Variations/post/?ApiKey='.$ApiKey);

$payload = json_encode(
    array(
        'product_id' => 1, //<-- Restituito dal POST Products
        'sku' => 'SKU-VAR-001',
        'ean' => '2234567890',
        'price' => '15.20',
        'purchase_price' => '1.00',
        'tax_id' => 2,
        'stock' => 10,
        'detail' => array(
            array(
                'name' => 'Colore',
                'value' => 'Blu'
            ),
            array(
                'name' => 'Taglia',
                'value' => 'M'
            )
        )
    )
);


curl_setopt_array($ch, array(
    CURLOPT_POST => TRUE,
    CURLOPT_RETURNTRANSFER => TRUE,
    CURLOPT_HTTPHEADER => array(
        'Content-Type: application/json'
    ),
    CURLOPT_POSTFIELDS => $payload,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_SSL_VERIFYPEER => FALSE,
));

$response = curl_exec($ch);
echo $response;


