<?php

require_once 'db_connection.php';

// Récupère la connexion à la base de données
$bdd = getDatabaseConnection();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = htmlspecialchars(trim($_POST['pseudo']));
    $password = htmlspecialchars(trim($_POST['mdp']));

    try {
        // Récupère les informations de l'utilisateur
        $req = $bdd->prepare('SELECT * FROM utilisateur WHERE NomUtilisateur = ?');
        $req->execute([$username]);
        $user = $req->fetch();

        if ($user && password_verify($password, $user['MotDePasse'])) {
            echo "Connexion réussie. Bienvenue, " . htmlspecialchars($user['NomUtilisateur']) . "!";
        } else {
            echo "Login ou mot de passe incorrect.";
        }
    } catch (Exception $e) {
        echo "Erreur : " . $e->getMessage();
    }
}
?>