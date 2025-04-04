<?php 
try {
    $bdd = new PDO('mysql:host=localhost:3306;dbname=gsb_rapport;charset=utf8', 'root', '');
    $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connecté à la base de données.";
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}

// Requête avec jointures (ajuste les noms de colonnes/tables si besoin)
$sql = "
    SELECT 
        r.AdresseRapport,
        p.EmailPracticien,
        p.VillePracticien,
        rg.NomRegion,
        rg.CodePostal,
        pr.NomProduit,
        pr.QuantiteProduit,
        e.NomEchantillon,
        e.QuantiteEchantillon
    FROM rapport r
    JOIN practicien p ON r.Id_Practicien = p.Id_Practicien
    JOIN region rg ON p.Id_Region = rg.Id_Region
    LEFT JOIN produit pr ON r.Id_Rapport = pr.Id_Rapport
    LEFT JOIN echantillon e ON r.Id_Rapport = e.Id_Rapport
";

$reponse = $bdd->query($sql);
?>

<div class="container">
    <h1>Liste des Rapports</h1>
    <table id="rapportsTable" border="1">
        <thead>
            <tr>
                <th>Adresse Rapport</th>
                <th>Code Postal</th>
                <th>Ville</th>
                <th>Email</th>
                <th>Région</th>
                <th>Produit et Quantité</th>
                <th>Échantillon, Quantité Échantillon</th>
            </tr>
        </thead>
        <tbody>
            <?php while ($donnees = $reponse->fetch()) { ?>
                <tr>
                    <td><?= $donnees['AdresseRapport'] ?></td>
                    <td><?= $donnees['CodePostal'] ?></td>
                    <td><?= $donnees['VillePracticien'] ?></td>
                    <td><?= $donnees['EmailPracticien'] ?></td>
                    <td><?= $donnees['NomRegion'] ?></td>
                    <td><?= $donnees['NomProduit'] ? $donnees['NomProduit'] . ' (' . $donnees['QuantiteProduit'] . ')' : 'Aucun' ?></td>
                    <td><?= $donnees['NomEchantillon'] ? $donnees['NomEchantillon'] . ' (' . $donnees['QuantiteEchantillon'] . ')' : 'Aucun' ?></td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>
