<?php
    include('banco.php');

    $id=$_POST['id'];
    $nome=$_POST['nome'];
    $nascimento=$_POST['nascimento'];
    $endereco=$_POST['endereco'];
    $fone=$_POST['fone'];

    $sql = "update tbaluno set nome='$nome', nascimento='$nascimento', endereco='$endereco', fone='$fone' where codaluno='$id'";

    $insert = $conexao->query($sql);
    if($insert==true){
        header('Location: buscaaluno.php?editar=ok');    
    }else{
        header('Location: buscaaluno.php?editar=erro');     
    }
?>