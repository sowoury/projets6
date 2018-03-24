
<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>Index</TITLE>
<link rel="stylesheet"    href="stylecss/mon.css"    type="text/css"    media="screen"    /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</HEAD>
<body>
<div id="entete">

</div>

<ul id="navigation">
  <li><a href="index.php" >Acceuil</a></li>
  <li><a href="etablissementconnecte.php" >Etablissement</a></li>
  <li><a href="domaineconecte.php" >Domaine</a></li>
  <li><a href="disciplineconecte.php" >Discipline</a></li>
  <li><a href="contacts.php" >Contact</a></li>
  <li><a href="deconnexion.php" >Deconnexion</a></li>
</ul>

<div id="bandeau">

<div id="connect">

<fieldset>
<legend align="center"><b>Espace publicitaire</b></legend>
<img src="images/logo.png" alt= "log " />
</fieldset><br>


</div>
<div id="desc">
<table class="table" border="1">
<tr><td style="background-color:#1F3C57;">discipline d'enseignement</td></td></tr

<?php

if(!empty($_GET['id']))
{
    $id=$_GET['id'];
  
}
 $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
$req="select distinct discipline from domaine,appartient,discipline where appartient.id_discipline=discipline.id_discipline and appartient.id_domaine='".$id."'";
            $rep = $bdd->query($req); 
            while($liste=$rep->fetch())
            {
               echo'<tr>';
                echo "<td>".$liste['discipline']."</td>";
                echo '<br>';
                echo'<tr>';
            }
    
    
?>
    
       </table><br>
    
</div>


</div>
<p class="pied">“La rétention de l'information est une forme de constipation du savoir.”</p>

</body>
</html>