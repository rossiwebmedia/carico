<?php

$ApiKey = 'XXX';

$params = array(

    //date
    'created_from' => '2021-12-01T00:00:00',
    'created_to' => '2022-01-01T00:00:00',

    //stati: impostare un solo filtro per richiesta

    //da processare (stato iniziale)
    'processing' => 1,

    //spediti (stato dopo l'uso della funzione "Ship")
    //'shipped' => 1,

    //spedizione confermata (stato dopo l'uso della funzione "ConfirmShip"
    //'shipping_confirmed' => 1
);

$ch = curl_init('https://www.gestionalesmarty.com/titanium/V2/Api/Sales_Orders/list/?ApiKey='.$ApiKey.'&'.http_build_query($params));

curl_setopt_array($ch, array(
    CURLOPT_POST => FALSE,
    CURLOPT_RETURNTRANSFER => TRUE,
    CURLOPT_CUSTOMREQUEST => 'GET',
    CURLOPT_SSL_VERIFYPEER => FALSE,
));

$response = curl_exec($ch);
echo $response;

/// PROCEDURA GENERALE PER L'ELABORAZIONE DEGLI ORDINI
///
/// 1. Recuperare la lista degli ordini tramite la funzione list e utilizzando il parametro "processing" per visualizzare solo i nuovi ordini
/// 2. Utilizzare la funzione "ship" per impostare l'ordine come "Spedito" su Smarty in modo da non visualizzare più questi ordini nella richiesta "processing"
/// 3. Utilizzare la funzione "shipConfirm" per inviare i dettagli della spedizione e l'aggiornamento di stato "Spedito" alla piattaforma di provenienza dell'ordine