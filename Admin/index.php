<?php 
include('../database/bdd_connection.php') ; 
include('../database/redirecting.php') ; 
if(isset($_SESSION['Admin'])){
    $template='index';

    include 'Templates/layout.phtml';
}else{
    header('location:error.php');
}
?>