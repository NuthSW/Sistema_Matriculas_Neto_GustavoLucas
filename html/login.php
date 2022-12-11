<?php
    include('banco.php');

    $usuario=$_POST['email'];
    $senha=$_POST['senha'];

    $sql="select * from tbusu where email='$usuario' and senha='$senha'";

    $consulta=$conexao->query($sql);

    if($consulta->num_rows>0){
        session_start();
        $_SESSION['login'] ='ok';
        header('location: principal.php?login=ok');    
    }else{
        header('location: index.php?login=erro');
    }
?>