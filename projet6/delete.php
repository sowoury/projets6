<?php
  if(!empty($_GET['id']))
  {
      $id=$_GET['id'];
      $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
      $rep = $bdd->query('DELETE FROM etudiant where id_etudiant="'.$id.'" ');
      header("location:supprimerU.php");
  }



?>