<?php
    include('banco.php');

    $id=$_POST['id'];
    $curso=$_POST['curso'];
    $turno=$_POST['turno'];
    $cargahoraria=$_POST['cargahoraria'];

    $sql = "update tbcursos set nome='$curso', turno='$turno', cargahoraria='$cargahoraria' where codcurso='$id'";

    $insert = $conexao->query($sql);
    if($insert==true){
        header('Location: buscacurso.php?editar=ok');    
    }else{
        header('Location: buscacurso.php?editar=erro');     
    }
?>