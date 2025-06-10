<?php
require '../../Backend/Tableau/RapportPerso.php'; // Inclut la logique PHP
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mes Rapports</title>
    <link rel="stylesheet" href="../../../public/css/table.css">
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
            <h1>Mes Rapports</h1>
            <table>
                <thead>
                    <tr>
                        <th>Adresse</th>
                        <th>Code Postal</th>
                        <th>Date</th>
                        <th>Produit</th>
                        <th>Échantillon</th>
                        <th>Visiteur</th>
                        <th>Praticien</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if (!empty($reports)): ?>
                        <?php foreach ($reports as $report): ?>
                            <tr>
                                <td><?= htmlspecialchars($report['AdresseRapport']) ?></td>
                                <td><?= htmlspecialchars($report['CodePostal']) ?></td>
                                <td><?= htmlspecialchars($report['DateRapport']) ?></td>
                                <td><?= htmlspecialchars($report['NomProduit']) ?></td>
                                <td><?= htmlspecialchars($report['NomEchantillon']) ?></td>
                                <td><?= htmlspecialchars($report['Visiteur']) ?></td>
                                <td><?= htmlspecialchars($report['Practicien']) ?></td>
                            </tr>
                        <?php endforeach; ?>
                    <?php else: ?>
                        <tr>
                            <td colspan="7" style="text-align: center;">Aucun rapport trouvé.</td>
                        </tr>
                    <?php endif; ?>
                </tbody>
            </table>
        </section>
    </main>
    <footer>
        <p>&copy; 2025 GSB Rapports - Tous droits réservés.</p>
    </footer>
</body>
</html>
