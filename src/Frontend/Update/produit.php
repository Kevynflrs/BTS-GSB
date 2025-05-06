<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mettre à jour la quantité d'un produit</title>
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
            <h1>Mettre à jour la quantité d'un produit</h1>
            <form action="../../Backend/Update/UpdateProduit.php" method="post">
                <label for="id_produit">Produit :</label>
                <select id="id_produit" name="id_produit" required>
                    <option value="">Sélectionnez un produit</option>
                    <?php
                    require_once '../../Backend/config.php';
                    $bdd = getDatabaseConnection();
                    $produits = $bdd->query('SELECT Id_Produit, NomProduit FROM produit');
                    foreach ($produits as $produit) {
                        echo "<option value=\"{$produit['Id_Produit']}\">{$produit['NomProduit']}</option>";
                    }
                    ?>
                </select>

                <label for="quantite">Nouvelle Quantité :</label>
                <input type="number" id="quantite" name="quantite" placeholder="Entrez la nouvelle quantité" required>

                <button type="submit">Mettre à jour</button>
            </form>
        </section>
    </main>

    <footer>
        <p>&copy; 2025 GSB Rapports - Tous droits réservés.</p>
    </footer>
</body>
</html>