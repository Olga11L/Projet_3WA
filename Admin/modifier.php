<?php 
include('../database/bdd_connection.php') ; 
include('../database/redirecting.php') ; 
if(isset($_POST['modifier'])){                                          
    $query=
    '
    UPDATE Categories Set Titre=? WHERE Id =?';
    $resultSet=$pdo->prepare($query);
    $resultSet->execute([$_POST['titre'],$_GET['mod']]);
    $msg= "La modification a bien été fait";
  }

if(isset($_GET['mod'])){

    $query ='SELECT * FROM Categories WHERE Id=?';
    $resultSet=$pdo->prepare($query);
    $resultSet->execute([$_GET['mod']]);
    $cats = $resultSet->fetch();
}


$template='modifier';

include 'Templates/layout.phtml';
?>