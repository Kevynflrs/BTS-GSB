<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire de Rapport de Visite</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<h2>Formulaire de Rapport de Visite</h2>

<form action="formulaire.php" method="post" enctype="multipart/form-data">
    <!-- Date de visite -->
    <div class="form-group">
        <label for="visit-date">Date de visite:</label>
        <input type="date" id="visit-date" name="visit-date" required>
    </div>

    <!-- Médecin visité -->
    <div class="form-group">
        <label for="doctor">Médecin visité:</label>
        <input type="text" id="doctor" name="doctor" required>
    </div>

    <!-- Produits pharmaceutiques présentés -->
    <div class="form-group">
        <label for="products">Produits pharmaceutiques présentés:</label>
        <textarea id="products" name="products" rows="4" required></textarea>
    </div>

    <!-- Échantillons fournis -->
    <div class="form-group">
        <label for="samples">Échantillons fournis:</label>
        <textarea id="samples" name="samples" rows="4" required></textarea>
    </div>

    <!-- Avis et commentaires du médecin -->
    <div class="form-group">
        <label for="comments">Avis et commentaires du médecin:</label>
        <textarea id="comments" name="comments" rows="4" required></textarea>
    </div>

    <!-- Lier un rapport à un praticien -->
    <div class="form-group">
        <label for="practitioner">Lier à un praticien:</label>
        <?php include 'practicien.php'; ?>
    </div>

    <!-- Ajouter des pièces jointes -->
    <div class="form-group">
        <label for="attachments">Ajouter des pièces jointes:</label>
        <input type="file" id="attachments" name="attachments" multiple>
    </div>

    <!-- Notes supplémentaires -->
    <div class="form-group">
        <label for="notes">Notes supplémentaires:</label>
        <textarea id="notes" name="notes" rows="4"></textarea>
    </div>

    <!-- Bouton de soumission -->
    <div class="form-group">
        <button name="submit" type="submit">Soumettre le rapport</button>
    </div>
</form>

</body>
</html>