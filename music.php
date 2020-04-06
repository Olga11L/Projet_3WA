<?php 
include('database/bdd_connection.php') ; 
include('database/redirecting.php') ; 
$query ='SELECT * FROM Playlists WHERE Cat_Id='.$_GET['Id'];
$resultSet = $pdo->query($query);
$musics = $resultSet->fetchAll();



$template='music';

include 'Templates/layout.phtml';
?>
		