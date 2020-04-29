<?php 
include('../database/bdd_connection.php') ; 
include('../database/redirecting.php') ; 
if(isset($_POST['login'])){
    $query='SELECT * FROM Admin WHERE User=? AND Password=?';
    $resultSet = $pdo->prepare($query);
    $resultSet->execute([$_POST['user'],md5($_POST['password'])]);
    $admin = $resultSet->fetch(); 

    if(isset($admin['Id'])){
        $_SESSION['Admin']=$_POST['user'];
        header('location:index.php');
    }else{
        $msg="Username ou Password incorrect";
    }
}
$template='login';

include 'Templates/layout.phtml';

?>