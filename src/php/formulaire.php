<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire de Rapport de Visite</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<?php
include 'config.php';

echo "<h2> Forumaire envoyé </h2>";

if (isset($_POST['submit'])) {
    $dateVisite = $_POST['visit-date'];
    $dateVisite = date('Y-m-d', strtotime($dateVisite));
    
    if (empty($dateVisite)) {
        echo "<p> Veuillez entrer une date de visite </p>";
    } else {
        $now = new DateTime('now');
        $now = $now->format('Y-m-d');
        
        if ($dateVisite < $now) {
            echo "<p> La date de visite doit être supérieure à la date actuelle </p>";
        }
        else
            echo "<p> La date de visite est correcte </p>";
    }
    
}



?>
</body>
</html>