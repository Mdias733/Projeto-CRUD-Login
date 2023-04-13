<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="wid_Usuarioth=device-wid_Usuarioth, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php

    if (!isset($_SESSION)) {
        session_start();
    }

    if (!isset($_SESSION['id_Usuario'])) {
        die('Você não pode acessar esta 
    página porque não está 
    logado.<p><a href="index.php">Entrar</a></p>
    ');

    }
    ?>

</body>

</html>