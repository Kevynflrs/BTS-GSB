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
        <label for="visit-date">Date de visite</label>
        <input type="date" id="visit-date" name="visit-date" required>
    </div>

    <div class="form-group">
        <label for="prenom">Prénom </label>
        <input type="text" id="prenom" name="prenom" required>
    </div>
    <div class="form-group">
        <label for="adresse">Votre adresse </label>
        <input type="text" id="adresse" name="adresse" required>
    </div>
    <div class="form-group">
        <label for="codepostal">Code postal </label>
        <input type="text" id="codepostal" name="codepostal" required>
    </div>
    <div class="form-group">
        <label for="ville">Ville </label>
        <input type="text" id="ville" name="ville" required>
    </div>

    
    <br><hr><br>
    

    <!-- Lier un rapport à un praticien -->
    <div class="form-group">
        <label for="practitioner">Email practicien </label>
        <?php include 'practicien.php'; ?>
    </div>

    <!-- Ajouter des pièces jointes -->
    <div class="form-group">
        <label for="region">Région </label>
        <textarea id="region" name="region" rows="4" required></textarea>
    </div>

    <!-- Échantillons fournis -->
    <div class="form-group">
        <label for="samples">Échantillons fournis</label>
        <textarea id="samples" name="samples" rows="4" required></textarea>
    </div>

    <!-- Produits pharmaceutiques présentés -->
    <div class="form-group">
        <label for="products">Produits pharmaceutiques présentés</label>
        <textarea id="products" name="products" rows="4" required></textarea>
    </div>

    

    <!-- Bouton de soumission -->
    <div class="form-group">
        <button name="submit" type="submit">Soumettre le rapport</button>
    </div>

    
</form>

</body>
</html>