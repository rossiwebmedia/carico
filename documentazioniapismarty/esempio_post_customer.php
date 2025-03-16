<?php

$ApiKey = 'XXX';

//

$ch = curl_init('https://www.gestionalesmarty.com/titanium/V2/Api/Customers/post/?ApiKey='.$ApiKey);

$payload = json_encode(
    array(
        'business_name' => 'Ragione sociale in alternativa a nome e cognome',
        'name' => 'Nome',
        'last_name' => 'Cognome',
        'dni' => 'AAAAAAAA',
        'vat' => '1234567890',
        'phone' => '111111111',
        'mobile' => '222222222',
        'email' => 'email@esempio.com',
        'billing_address'=>array(
            'address' => 'Indirizzo',
            'address2' => 'Note indirizzo',
            'city' => 'Città',
            'zipcode' => '00000',
            'state' => 'MI',
            'country_iso' => 'IT',
        ),
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