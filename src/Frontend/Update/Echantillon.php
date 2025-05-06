<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mettre à jour la quantité d'un Échantillon</title>
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
            <h1>Mettre à jour la quantité d'un Échantillon</h1>
            <form action="../../Backend/Update/UpdateEchantillon.php" method="post">
                <label for="id_echantillon">Échantillon :</label>
                <select id="id_echantillon" name="id_echantillon" required>
                    <option value="">Sélectionnez un échantillon</option>
                    <?php
                    require_once '../../Backend/config.php';
                    $bdd = getDatabaseConnection();
                    $echantillons = $bdd->query('SELECT Id_Echantillon, NomEchantillon FROM echantillon');
                    foreach ($echantillons as $echantillon) {
                        echo "<option value=\"{$echantillon['Id_Echantillon']}\">{$echantillon['NomEchantillon']}</option>";
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