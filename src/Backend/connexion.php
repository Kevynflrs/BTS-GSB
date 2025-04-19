<?php

require_once 'db_connection.php';

// Récupère la connexion à la base de données
$bdd = getDatabaseConnection();
echo "Connecté à la base de données.";

// Récupère les données du formulaire de connexion
if (isset($_POST['Connexion'])) {
    $username = $_POST['pseudo'];
    $password = $_POST['mdp'];

    // Récupère les informations de l'utilisateur
    $req = $bdd->prepare('SELECT * FROM utilisateur WHERE Login = ?');
    $req->execute([$username]);
    $user = $req->fetch();

    if ($user && password_verify($password, $user['MotDePasse'])) {
        echo "Connexion réussie.";
    } else {
        echo "Login ou mot de passe incorrect.";
    }
}
?>