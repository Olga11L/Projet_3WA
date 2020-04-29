<?php 
include('../database/bdd_connection.php') ; 
include('../database/redirecting.php') ;
if(isset($_SESSION['Admin'])){
    if(isset($_POST['ajouter'])){
        $fileName = rand(1111,9999)."_".time();
        $extension =pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
        $newname = $fileName . '.' . $extension;
        $source = $_FILES['image']['tmp_name'];
        $destination = "../images/" . $newname;
        move_uploaded_file($source, $destination);
        $query=
        '
        INSERT INTO
        Categories
        (Titre,Image)
        VALUES
        (?,?)
        ';
        $resultSet=$pdo->prepare($query);
        $resultSet->execute([$_POST['titre'],'images/'.$newname]);
    }
    $template='ajouter_categorie';

    include 'Templates/layout.phtml';

}else{
    header('location:error.php');
}
?>