<?php
include 'config.php';
$sql = 'SELECT Id_Produit, NomProduit FROM Produit;';
$test = $bdd->prepare($sql);

$test->execute();
$var = $test->fetchAll();
?> 
<select id="products" name="products">
    <?php
    foreach ($var as $key => $value) {
        $nomProduit = htmlspecialchars($value['NomProduit']);
        $idProduit = htmlspecialchars($value['Id_Produit']);
        echo "<option value=\"$key\">". $idProduit ." : ".$nomProduit."</option>";
    }
?>
</select>