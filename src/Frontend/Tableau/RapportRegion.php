<?php
session_start(); // Démarre la session
require_once '../../Backend/auth.php';
require_once '../../Backend/config.php';

$isConnected = isset($_SESSION['user_id']);

if (!isset($_SESSION['region_id'])) {
    die("Vous devez être connecté pour accéder à cette page.");
}

if (!isset($_SESSION['role']) || $_SESSION['role'] !== 'responsable') {
    die("Accès refusé : seuls les responsables peuvent modifier un rapport.");
}

$regionId = $_SESSION['region_id'];

try {
    $bdd = getDatabaseConnection();
    $stmt = $bdd->prepare("
        SELECT 
            r.Id_Rappport,
            r.AdresseRapport, 
            r.CodePostal, 
            r.DateRapport, 
            p.NomProduit, 
            e.NomEchantillon, 
            v.PrenomUtilisateur AS Visiteur, 
            pr.EmailPracticien AS Practicien,
            r.etat
        FROM rapport r
        JOIN produit p ON r.Id_Produit = p.Id_Produit
        JOIN echantillon e ON r.Id_Echantillon = e.Id_Echantillon
        JOIN utilisateur v ON r.Id_Visiteur = v.Id_Utilisateur
        JOIN practicien pr ON r.Id_Practicien = pr.Id_Practicien
        WHERE r.IdRegion = :regionId
    ");

    $stmt->execute([':regionId' => $regionId]);
    $reports = $stmt->fetchAll();
} catch (Exception $e) {
    die("Erreur : " . $e->getMessage());
}

if (!hasRole('delegue')) {
    header('Location: ../liste.php');
    exit();
}
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <title>Rapports par Région</title>
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
            <h1>Rapports par Région</h1>
    
            <!-- Rapports valides -->
            <h2>Rapports valides</h2>
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
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $hasValid = false;
                    foreach ($reports as $report):
                        if ($report['etat'] !== 'supprimé'):
                            $hasValid = true;
                    ?>
                        <tr>
                            <td><?= htmlspecialchars($report['AdresseRapport']) ?></td>
                            <td><?= htmlspecialchars($report['CodePostal']) ?></td>
                            <td><?= htmlspecialchars($report['DateRapport']) ?></td>
                            <td><?= htmlspecialchars($report['NomProduit']) ?></td>
                            <td><?= htmlspecialchars($report['NomEchantillon']) ?></td>
                            <td><?= htmlspecialchars($report['Visiteur']) ?></td>
                            <td><?= htmlspecialchars($report['Practicien']) ?></td>
                            <td>
                                <a href="../Update/Rapport.php" title="Modifier">
                                    <img src="../../../public/img/update.png" alt="Modifier" style="height:24px;">
                                </a>
                                <a href="../Delete/Rapport.php" title="supprimer">
                                    <img src="../../../public/img/delete.png" alt="supprimer" style="height:24px;">
                                </a>
                            </td>
                        </tr>
                    <?php
                        endif;
                    endforeach;
                    if (!$hasValid):
                    ?>
                        <tr>
                            <td colspan="8" style="text-align: center;">Aucun rapport valide trouvé pour cette région.</td>
                        </tr>
                    <?php endif; ?>
                </tbody>
            </table>
    
            <!-- Rapports supprimés -->
            <h2>Rapports supprimés</h2>
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
                    <?php
                    $hasDeleted = false;
                    foreach ($reports as $report):
                        if ($report['etat'] === 'supprimé'):
                            $hasDeleted = true;
                    ?>
                        <tr>
                            <td><?= htmlspecialchars($report['AdresseRapport']) ?></td>
                            <td><?= htmlspecialchars($report['CodePostal']) ?></td>
                            <td><?= htmlspecialchars($report['DateRapport']) ?></td>
                            <td><?= htmlspecialchars($report['NomProduit']) ?></td>
                            <td><?= htmlspecialchars($report['NomEchantillon']) ?></td>
                            <td><?= htmlspecialchars($report['Visiteur']) ?></td>
                            <td><?= htmlspecialchars($report['Practicien']) ?></td>
                        </tr>
                    <?php
                        endif;
                    endforeach;
                    if (!$hasDeleted):
                    ?>
                        <tr>
                            <td colspan="7" style="text-align: center;">Aucun rapport supprimé pour cette région.</td>
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
