<?php 
include('database/bdd_connection.php') ; 
include('database/redirecting.php') ; 
	
$query ='SELECT * FROM Blog';
$resultSet = $pdo->query($query);
$blogs = $resultSet->fetchAll();

$query ='SELECT * FROM Categories ';
$resultSet = $pdo->query($query);
$cats = $resultSet->fetchAll();

$template='blog';

include 'Templates/layout.phtml';
?>
										
	