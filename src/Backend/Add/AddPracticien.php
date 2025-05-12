<?php
require_once '../config.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);
    $specialite = filter_input(INPUT_POST, 'specialite', FILTER_SANITIZE_STRING);
    $description = filter_input(INPUT_POST, 'description', FILTER_SANITIZE_STRING);
    $cabinet = filter_input(INPUT_POST, 'cabinet', FILTER_SANITIZE_STRING);
    $adresse = filter_input(INPUT_POST, 'adresse', FILTER_SANITIZE_STRING);
    $codepostal = filter_input(INPUT_POST, 'codepostal', FILTER_SANITIZE_STRING);
    $ville = filter_input(INPUT_POST, 'ville', FILTER_SANITIZE_STRING);
    $region = filter_input(INPUT_POST, 'region', FILTER_VALIDATE_INT);

    // Vérification des champs obligatoires
    if ($email && $specialite && $description && $cabinet && $adresse && $codepostal && $ville && $region) {
        try {
            $pdo = getDatabaseConnection();
            $stmt = $pdo->prepare("
                INSERT INTO practicien (
                    EmailPracticien, 
                    SpecialiteMedecin, 
                    DescriptionMedecin, 
                    Cabinet, 
                    AdressePracticien, 
                    CodePostalPracticien, 
                    VillePracticien, 
                    IdRegion
                ) VALUES (
                    :email, 
                    :specialite, 
                    :description, 
                    :cabinet, 
                    :adresse, 
                    :codepostal, 
                    :ville, 
                    :region
                )
            ");
            $stmt->bindParam(':email', $email);
            $stmt->bindParam(':specialite', $specialite);
            $stmt->bindParam(':description', $description);
            $stmt->bindParam(':cabinet', $cabinet);
            $stmt->bindParam(':adresse', $adresse);
            $stmt->bindParam(':codepostal', $codepostal);
            $stmt->bindParam(':ville', $ville);
            $stmt->bindParam(':region', $region);

            if ($stmt->execute()) {
                echo "<script>
                    alert('Praticien ajouté avec succès !');
                    window.location.href = '../../Frontend/Add/ajout.php';
                </script>";
                exit;
            } else {
                throw new Exception('Échec de l\'insertion des données dans la base.');
            }
        } catch (Exception $e) {
            error_log($e->getMessage());
            echo "<script>
                alert('Erreur : " . addslashes($e->getMessage()) . "');
                window.location.href = '../../Frontend/ajout.php';
            </script>";
            exit;
        }
    } else {
        echo "<script>
            alert('Tous les champs sont obligatoires.');
            window.location.href = '../../Frontend/Add/Practicien.php';
        </script>";
        exit;
    }
} else {
    echo "<script>
        alert('Méthode non autorisée.');
        window.location.href = '../../Frontend/ajout.php';
    </script>";
    exit;
}
?>