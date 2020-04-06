<?php 
include('database/bdd_connection.php') ; 
include('database/redirecting.php') ; 

  if(isset($_POST['ajouter'])){

        $query='SELECT * FROM User WHERE Email=? AND Pass=?';
        $resultSet = $pdo->prepare($query);
        $resultSet->execute([$_POST['Email'],md5($_POST['Pass'])]);
        $user = $resultSet->fetch(); 

        if(isset($user['Id'])){
            $_SESSION['user']=$user['Prenom'];
            header('location:./accueil');
        }else{
            header('location:./connexion');
        }
	}
	
	$template='login';

    include 'Templates/layout.phtml';

?>