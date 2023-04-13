<?php
    include("conn.php");
    $login = $_POST['user'];
    $senha = $_POST['senha'];

    $usuario = $pdo->prepare('SELECT * FROM tb_cadUsuario where nome_Usuario=:nome_Usuario 
    AND senha_Usuario=:senha_Usuario');
    $usuario->execute(array(':nome_Usuario'=>$login,':senha_Usuario'=>$senha));

    $rowTabela = $usuario->fetchAll();
    
    if (empty($rowTabela)){
        echo "<script>
        alert('Usuario e/ou senha invalidos!!!');
        window.history.back();
        </script>";
    }else{
       
    $sessao = $rowTabela[0];

    if(!isset($_SESSION)) {
    session_start();
    }
    $_SESSION['id_Usuario'] = $sessao['id_Usuario'];
    $_SESSION['login'] = $sessao['login'];

    header("Location: reclamacoes.php");
    }

?>
