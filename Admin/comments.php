<?php 
include('../database/bdd_connection.php'); 
include('../database/redirecting.php');
if(isset($_SESSION['Admin'])){
    if(isset($_GET['del'])){
        $query=
        '
        DELETE FROM Comment WHERE Id=?';
        $resultSet=$pdo->prepare($query);
        $resultSet->execute([$_GET['del']]);
    }

    $query ='SELECT * FROM Comment';
    $resultSet = $pdo->query($query);
    $comentaires = $resultSet->fetchAll();

    $template='comments';

    include 'Templates/layout.phtml';
}else{
    header('location:error.php');
}
?>