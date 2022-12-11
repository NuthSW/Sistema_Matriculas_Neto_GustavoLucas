<?php
    include('banco.php');

    $nome=$_POST['nome'];
    $sexo=$_POST['sexo'];
    $nascimento=$_POST['nascimento'];
    $endereco=$_POST['endereco'];
    $fone=$_POST['fone'];

    $sql="insert into tbaluno values(null,'$nome','$nascimento','$endereco','$fone')";

    $insert = $conexao->query($sql);
    if($insert==true){
        header('Location: cadaluno.php?registro=ok');    
    }else{
        header('Location: cadaluno.php?registro=erro');     
    }
?>