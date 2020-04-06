<?php 
include('database/bdd_connection.php') ; 
include('database/redirecting.php') ; 


$query ='SELECT * FROM Blog WHERE Id='.$_GET['Id'];
$resultSet = $pdo->query($query);
$blogs = $resultSet->fetch();

$query ='SELECT * FROM Blog_Page WHERE Blog_Id='.$_GET['Id'];
$resultSet = $pdo->query($query);
$blogPages = $resultSet->fetch();

$query ='SELECT * FROM Categories ';
$resultSet = $pdo->query($query);
$cats = $resultSet->fetchAll();



$template='blog_page';
include 'Templates/layout.phtml';

?>									
	