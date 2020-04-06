<?php 
include('database/bdd_connection.php') ; 
include('database/redirecting.php') ;  
$query ='SELECT * FROM Slider';
$resultSet = $pdo->query($query);
$slides = $resultSet->fetchAll();
		
$query ='SELECT * FROM Blog';
$resultSet = $pdo->query($query);
$blogs = $resultSet->fetchAll();

$query ='SELECT * FROM Categories';
$resultSet = $pdo->query($query);
$cats = $resultSet->fetchAll();

$template='index';

include 'Templates/layout.phtml';

?>
			
		   
	


