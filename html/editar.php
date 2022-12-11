<?php
    include('banco.php');

    $id=$_POST['id'];
    $nome=$_POST['nome'];
    $email=$_POST['email'];
    $senha=$_POST['senha'];

    $sql = "update tbusu set nome='$nome', email='$email', senha='$senha' where codusu='$id'";

    $insert = $conexao->query($sql);
    if($insert==true){
        header('Location: buscausu.php?editar=ok');    
    }else{
        header('Location: buscausu.php?editar=erro');     
    }
?>