<?php
include 'config.php';
$sql = 'SELECT IdRegion, NomRegion FROM region;';
$test = $bdd->prepare($sql);

$test->execute();
$var = $test->fetchAll();
?> 
<select id="region" name="region">
    <?php
    foreach ($var as $key => $value) {
        // echo "<br/> Tableau " . $key . "<br/>";
        // echo $value['MailMedecin'] . " " . $value['NumeroTelephoneMedecin'];
        $mail = htmlspecialchars($value['NomRegion']);
        $key = htmlspecialchars($value['IdRegion']);
        echo "<option value=\"$key\">". "$key : ".$mail."</option>";
    }
?>
</select>
<?php
/* 
<select id="practitioner" name="practitioner">
    <option value="1">Dr. Dupont</option>
    <option value="2">Dr. Martin</option>
    <option value="3">Dr. Leroy</option>
    <!-- Ajoutez d'autres options au besoin -->
</select>
*/
?>