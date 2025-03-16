<?php

$ApiKey = 'XXX';

//

$ch = curl_init('https://www.gestionalesmarty.com/titanium/V2/Api/Products/post/?ApiKey='.$ApiKey.'&replace_images=1');

$payload = json_encode(
    array(
        'sku' => 'SKU-001',
        'ean' => '1234567890',
        'title' => 'Nome 001',
        'description' => 'Descrizione estesa',
        'description_short' => 'Descrizione breve',
        'category' => 'Categoria 1, Sottocategoria 1',
        'supplier' => array(
            'Fornitore 1',
            'Fornitore 2'
        ),
        'price' => '15.20',
        'purchase_price' => '1.00',
        'weight' => '80',
        'stock' => 10,
        'tax_id' => 2,
        'brand' => 'Produttore',
        'images' => array(
            'URL1',
            'URL2'
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

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Il parametro "replace_images=1" indica di rimuovere le immagini presenti su Smarty e di sostituirle con quelle presenti nel messaggio.
// Senza questo parametro le immagini vengono aggiunte a quelle già presenti.
// E' consigliato inviare la chiave "images" solo in caso di aggiornamento immagini e non inserirla in caso contrario.

