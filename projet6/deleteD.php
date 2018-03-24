<?php
  if(!empty($_GET['id']))
  {
      $id=$_GET['id'];
      $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
      $rep = $bdd->query('DELETE FROM discipline where id_discipline="'.$id.'" ');
      header("location:infoGradiscip.php");
  }



?>