<?php
session_start(); // Démarre la session pour accéder aux données utilisateur
$isConnected = isset($_SESSION['user_id']); // Vérifie si l'utilisateur est connecté
require_once '../../Backend/auth.php'; // Vérifie si l'utilisateur est connecté
require_once '../../Backend/config.php';
$bdd = getDatabaseConnection();
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Supprimer un Rapport</title>
    <link rel="stylesheet" href="../../../public/css/form.css" />
</head>

<body>
    <header>
        <img src="../../../public/img/GSB-Logo.png" />
        <div class="menu">
            <a href="/">Home</a>
            <a href="../liste.php">Liste</a>
            <a href="../ajout.php">Ajout</a>
            <?php if ($isConnected): ?>
                <form action="../../Backend/logout.php" method="post" style="display: inline;">
                    <button type="submit" style="background: none; border: none; color: white; font-weight: bold; cursor: pointer;">Déconnexion</button>
                </form>
            <?php else: ?>
                <a href="../connexion.html">Se connecter</a>
            <?php endif; ?>
        </div>
    </header>

    <main>
        <section class="container">
            <h1>Supprimer un Rapport</h1>
            <form action="../../Backend/Delete/DeleteRapport.php" method="post">
                <label for="id_rapport">Rapport :</label>
                <select id="id_rapport" name="id_rapport" required>
                    <option value="">Sélectionnez un rapport</option>
                    <?php
                    $rapports = $bdd->query('SELECT Id_Rappport, AdresseRapport FROM rapport');
                    foreach ($rapports as $rapport) {
                        echo "<option value=\"{$rapport['Id_Rappport']}\">{$rapport['AdresseRapport']}</option>";
                    }
                    ?>
                </select>

                <button type="submit">Supprimer</button>
            </form>
        </section>
    </main>

    <footer>
        <p>&copy; 2025 GSB Rapports - Tous droits réservés.</p>
    </footer>
</body>

</html>