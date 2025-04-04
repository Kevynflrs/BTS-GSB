<?php
include 'config.php';
$sql = 'SELECT Id_Echantillon, NomEchantillon FROM echantillon;';
$test = $bdd->prepare($sql);

$test->execute();
$var = $test->fetchAll();
?> 
<select id="samples" name="samples">
    <?php
    foreach ($var as $key => $value) {
        $nomEchantillon = htmlspecialchars($value['NomEchantillon']);
        $idEchantillon = htmlspecialchars($value['Id_Echantillon']);
        echo "<option value=\"$key\">". $idEchantillon ." : ".$nomEchantillon."</option>";
    }
?>
</select>