<?php

// Vérifie la connexion
try {
    $bdd = new PDO('mysql:host=localhost:3306;dbname=gsb_rapport;charset=utf8', 'root', '');
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}
echo "Connecté à la base de données.";

$reponse= $connect->query('SELECT * FROM rapport');

$sql = "SELECT AdresseRapport, DateRapport, Id_Practicien, Id_Visiteur, Id_Rapport FROM rapports";

 

?>