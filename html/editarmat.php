<?php
    include('banco.php');

    $id=$_POST['id'];
    $curso=$_POST['curso'];
    $aluno=$_POST['aluno'];
    $usuario=$_POST['usuario'];
    $data=$_POST['data'];
    $horario=$_POST['horario'];

    $sql = "update tbmatriculas set codcurso='$curso', codaluno='$aluno', codusu='$usuario' where codmat='$id'";

    $insert = $conexao->query($sql);
    if($insert==true){
        header('Location: buscamat.php?editar=ok');    
    }else{
        header('Location: buscamat.php?editar=erro');     
    }
?>