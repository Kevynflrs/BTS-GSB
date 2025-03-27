<?php

// Vérifie la connexion
try {
    $bdd = new PDO('mysql:host=localhost:3306;dbname=gsb_rapport;charset=utf8', 'root', '');
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}
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
        // Rediriger vers la page d'accueil ou une autre page
    } else {
        echo "Login ou mot de passe incorrect.";
    }
}
?>