<?php 
include('database/bdd_connection.php') ; 
include('database/redirecting.php') ; 
$error = '';
$comment_name = '';
$comment_content = '';

if(!empty($_POST["comment_name"]))
{
 $comment_name = $_POST["comment_name"];
}

if(!empty($_POST["comment_content"]))
{
 $comment_content = $_POST["comment_content"];
}

if($error == '')
{
 $query = "
 INSERT INTO Comment
 (Comment_text, Comment_sender_name,Date,Blog_Id) 
 VALUES (?, ?, Now(),?)
 ";
 $resultSet=$pdo->prepare($query);
 $resultSet->execute([$comment_content,$comment_name,$_POST['Id']]);
}

$data = array(
 'error'  => $error
);

echo json_encode($data);


?>
		