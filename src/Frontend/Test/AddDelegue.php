<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require_once '../../Backend/Get/generateRegions.php';
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Test Regions</title>
</head>
<body>
    <select>
        <?php echo generateRegionOptions(); ?>
    </select>
</body>
</html>