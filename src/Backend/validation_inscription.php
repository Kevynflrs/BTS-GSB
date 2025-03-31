<?php

// Vérifie la connexion
try {
    $bdd = new PDO('mysql:host=localhost:3306;dbname=gsb_rapport;charset=utf8', 'root', '');
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}
echo "Connecté à la base de données.";

// Récupère les données du formulaire
if (isset($_POST['Envoyer'])) {
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $telephone = $_POST['telephone'];
    $username = $_POST['pseudo'];
    $email = $_POST['mail'];
    $password = $_POST['mdp'];
    $password2 = $_POST['confmdp'];

    $erreur = 0; // Initialisation de la variable $erreur

    // Comparaison des mots de passe avant le hachage
    if ($password != $password2) {
        echo "Les mots de passe saisis doivent être égaux.";
        $erreur += 1;
    }

    // Vérification de l'email et du numéro de téléphone (valides ou non)
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo "L'adresse e-mail n'est pas valide.";
        $erreur += 1;
    }

    if (!preg_match('/^[0-9]{10}+$/', $telephone)) {
        echo "Le numéro de téléphone n'est pas valide.";
        $erreur += 1;
    }

    if ($erreur == 0) {
        // Hachage du mot de passe
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

        // Insertion des données dans la base de données
        $req = $bdd->prepare('INSERT INTO utilisateur(MotDePasse, NomUtilisateur, PrenomUtilisateur, Login, NumeroTelephoneUtilisateur, MailUtilisateur) VALUES(?, ?, ?, ?, ?, ?)');
        $req->execute([$hashed_password, $nom, $prenom, $username, $telephone, $email]);

        echo "Inscription réussie.";
    } else {
        echo "L'inscription n'a pas pu être établie avec succès.";
    }
}
?>