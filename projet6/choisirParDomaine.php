<?php
session_start();
if(!empty($_GET['id']))
{
    $id=$_GET['id'];
    
   
   

$id_etu=$_SESSION['etudiant'][4];
 $id_domaine=$_SESSION['iddomaine'];

 $db=new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', ''); 
  $resulta=$db->prepare(" INSERT into inscription (id_etudiant,id_domaine,id_etablissement) values(?,?,?)");
        $resulta->execute(array($id_etu,$id_domaine,$id));
    header("location:user.php");

}
           
    
    
?>