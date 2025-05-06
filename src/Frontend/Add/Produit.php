<?php
require_once __DIR__ . '/../../Backend/Get/generateRegions.php';
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter un Produit</title>
    <link rel="stylesheet" href="../../../public/css/form.css" />
</head>
<body>
    <header>
        <img src="../../../public/img/GSB-Logo.png" />
        <div class="menu">
          <a href="/">Home</a>
          <a href="../ajout.html">Ajout</a>
          <a href="../connexion.html">Se connecter</a>
        </div>
    </header>

    <main>
        <section class="container">
            <h1>Ajouter un Produit</h1>
            <form action="../../Backend/Add/AddProduit.php" method="post">
                <label for="nom">Nom du Produit :</label>
                <input type="text" id="nom" name="nom" placeholder="Entrez le nom du produit" required>

                <label for="date">Date d'Ajout :</label>
                <input type="date" id="date" name="date" required>

                <label for="libele">Libellé :</label>
                <input type="text" id="libele" name="libele" placeholder="Entrez le libellé" required>

                <label for="quantite">Quantité :</label>
                <input type="number" id="quantite" name="quantite" placeholder="Entrez la quantité" required>

                <button type="submit">Ajouter</button>
            </form>
        </section>
    </main>

    <footer>
        <p>&copy; 2025 GSB Rapports - Tous droits réservés.</p>
    </footer>
</body>
</html>