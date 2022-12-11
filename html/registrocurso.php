<?php
    include('banco.php');

    $curso=$_POST['curso'];
    $turno=$_POST['turno'];
    $cargahoraria=$_POST['cargahoraria'];

    $sql="insert into tbcursos values(null,'$curso','$turno','$cargahoraria')";

    $insert = $conexao->query($sql);
    if($insert==true){
        header('Location: cadcurso.php?registro=ok');    
    }else{
        header('Location: cadcurso.php?registro=erro');     
    }
?>