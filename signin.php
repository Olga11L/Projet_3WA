<?php 
include('database/bdd_connection.php') ; 
include('database/redirecting.php') ; 
		
if(isset($_POST['ajouter'])){
$query=
'
INSERT INTO
User
(Nom,Prenom,Email,Pass,DateA)
VALUES
(?,?,?,?,NOW())
';
$resultSet=$pdo->prepare($query);
$resultSet->execute([$_POST['Nom'],$_POST['Prenom'],$_POST['Email'],md5($_POST['Pass'])]);
header('location:./connexion');
}


$template='signin';

include 'Templates/layout.phtml';

?>
	