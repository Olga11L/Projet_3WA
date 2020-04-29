<?php 
include('../database/bdd_connection.php') ; 
include('../database/redirecting.php') ;
if(isset($_SESSION['Admin'])){ 
    if(isset($_GET['del'])){
        $query=
        '
        DELETE FROM Playlists WHERE Id=?';
        $resultSet=$pdo->prepare($query);
        $resultSet->execute([$_GET['del']]);
    }

    $query ='SELECT * FROM Playlists';
    $resultSet = $pdo->query($query);
    $musics = $resultSet->fetchAll();


    $template='audios';

    include 'Templates/layout.phtml';
}else{
    header('location:error.php');
}
?>