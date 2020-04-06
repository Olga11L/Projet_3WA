<?php 
include('database/bdd_connection.php') ; 
include('database/redirecting.php') ; 
if(isset($_POST['envoyer']))
{
		$to      = 'asatryanol.95@gmail.com';
		$subject = $_POST['Sujet'];
		$message = $_POST['Message'];
		$headers = 'From:' .$_POST['Email'].  "\r\n";

		mail($to, $subject, $message,$headers);
		$msg="Votre message a bien été envoyé !";
	}

$template='contact';

include 'Templates/layout.phtml';

?>