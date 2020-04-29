<?php 
include('../database/bdd_connection.php'); 
include('../database/redirecting.php');
if(isset($_SESSION['Admin'])){
    $query ='SELECT * FROM Categories';
    $resultSet = $pdo->query($query);
    $cats = $resultSet->fetchAll();

    if(isset($_POST['Ajouter'])){
        $fileName = rand(1111,9999)."_".time();
        $extension =pathinfo($_FILES['audio']['name'], PATHINFO_EXTENSION);
        $newname = $fileName . '.' . $extension;
        $source = $_FILES['audio']['tmp_name'];
        $destination = "../Audio/" . $newname;
        move_uploaded_file($source, $destination);
        $query=
        '
        INSERT INTO
        Playlists
        (Titre,Cat_Id,Music,Time)
        VALUES
        (?,?,?,?)
        ';
        $resultSet=$pdo->prepare($query);
        $resultSet->execute([$_POST['titre'],$_POST['Cat_Id'],$newname,$_POST['time']]);
    }
    $template='ajouter_audio';

    include 'Templates/layout.phtml';
}else{
    header('location:error.php');
}
