<?php 
include_once('database/bdd_connection.php') ; 
include_once('database/redirecting.php') ; 

   $query = "
   SELECT * FROM Comment WHERE Blog_Id=?
   ORDER BY Id DESC
   ";
   
   $resultSet=$pdo->prepare($query);
   $resultSet->execute([$_POST['id']]);
   
   $comments = $resultSet->fetchAll();

   $output = '';
   foreach($comments as $comment)
   {
    $output .= '
   <div class="comment">
      <p><i class="fa fa-user comment__user"></i>'.$comment["Comment_sender_name"].'</p> 
      <p class="comment__date">Date:  '.$comment["Date"].'</p>
      <p class="comment__text">'.$comment["Comment_text"].'</p>
   </div>
    ';
   }
   
   echo $output;
?>
		