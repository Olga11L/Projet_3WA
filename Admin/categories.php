<?php 
include('../database/bdd_connection.php') ; 
include('../database/redirecting.php') ; 
if(isset($_SESSION['Admin'])){

    if(isset($_GET['del'])){
        $query=
        '
        DELETE FROM Categories WHERE Id=?';
        $resultSet=$pdo->prepare($query);
        $resultSet->execute([$_GET['del']]);
    }

    $query ='SELECT * FROM Categories';
    $resultSet = $pdo->query($query);
    $cats = $resultSet->fetchAll();
    
    $template='categories';

    include 'Templates/layout.phtml';
}else{
    header('location:error.php');
}
?>