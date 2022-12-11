<?php
    include ('banco.php');
    $id = $_GET['id'];

    $sql = "delete from tbmatriculas where codmat = '$id'";

    $consulta = $conexao->query($sql);
     if ($consulta){
        header('Location: buscamat.php?delete=ok');
     }else{
        header('Location: buscamat.php?delete=erro');
     }
?>