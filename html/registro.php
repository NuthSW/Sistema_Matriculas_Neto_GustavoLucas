<?php
    include('banco.php');

    $nome=$_POST['nome'];
    $email=$_POST['email'];
    $senha=$_POST['senha'];

    $sql="insert into tbusu values(null,'$nome','$email','$senha')";

    $insert = $conexao->query($sql);
    if($insert==true){
        header('Location: cadusu.php?registro=ok');    
    }else{
        header('Location: cadusu.php?registro=erro');     
    }
?>