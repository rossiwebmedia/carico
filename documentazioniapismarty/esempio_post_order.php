<?php

$ApiKey = 'XXX';
$cusomerId = 1;

//

$ch = curl_init('https://www.gestionalesmarty.com/titanium/V2/Api/Sales_Orders/post/?ApiKey='.$ApiKey);

$payload = json_encode(
    array(
        'customer_id'=>$cusomerId,
        'billing_address'=>array(
            'address' => 'Indirizzo',
            'address2' => 'Note indirizzo',
            'city' => 'Città',
            'zipcode' => '00000',
            'state' => 'MI',
            'country_iso' => 'IT',
            'name' => 'Nome',
            'lastname' => 'Cognome',
            'vat' => '012345678',
            'dni' => 'AAAAAAAAAAAA',
        ),
        'payment_type'=>'PayPal',
        'fees' => array(
            'shipping' => 10.00,
            'shipping_tax' => -1
        ),
        'rows'=>
            array(
                array(
                    'sku' => '1000952600029',
                    'name' => 'Nome prodotto 1',
                    'quantity' => '2',
                    'price' => '15',
                ),
                array(
                    'sku' => '1000952600029-2',
                    'name' => 'Nome prodotto 2',
                    'quantity' => '1',
                    'price' => '10',
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