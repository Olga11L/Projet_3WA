<?php 
include('database/bdd_connection.php') ; 
include('database/redirecting.php') ; 
	
$query ='SELECT * FROM Categories';
$resultSet = $pdo->query($query);
$cats = $resultSet->fetchAll();

$template='playlist';

include 'Templates/layout.phtml';
?>
										
	