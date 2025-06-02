<?php
function getDatabaseConnection() {
    $host = 'galaxyvadmin.mysql.db';
    $dbname = 'gsb_rapport';
    $username = 'galaxyvadmin';
    $password = 'ykXhT5t9v54Veu0afj0C';

    try {
        $dsn = "mysql:host=$host;dbname=$dbname;charset=utf8";
        return new PDO($dsn, $username, $password, [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        ]);
    } catch (PDOException $e) {
        die('Erreur de connexion : ' . $e->getMessage());
    }
}
?>