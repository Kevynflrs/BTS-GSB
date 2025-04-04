<?php
try {
    $host = 'localhost';
    $port = '3308'; // changez la valeur de cette variable en fonction du port utilisé par MySQL (le mien 3308)
    $dbname = 'gsb_rapport';
    $charset = 'utf8';
    $user = 'root';
    $password = '';
    
    $dsn = "mysql:host=$host;port=$port;dbname=$dbname;charset=$charset";
    $bdd = new PDO($dsn, $user, $password);
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}

?>