<?php
    include('banco.php');

    $curso=$_POST['curso'];
    $aluno=$_POST['aluno'];
    $usuario=$_POST['usuario'];
    $data=$_POST['data'];
    $horario=$_POST['horario'];

    $sql="insert into tbmatriculas values(null,'$curso','$aluno','$usuario','$data','$horario')";

    $insert = $conexao->query($sql);
    if($insert==true){
        header('Location: cadmat.php?registro=ok');    
    }else{
        header('Location: cadmat.php?registro=erro');     
    }
?>