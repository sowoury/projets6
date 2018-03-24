
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
<tr><td style="background-color:#1F3C57;">etablissement d'enseignement</td>
    <td style="background-color:#1F3C57;">Actions</td>
    
</tr>
<?php
session_start();
if(!empty($_GET['id']))
{
    $id=$_GET['id'];
    $_SESSION['iddomaine']=$id;
   
   
}
 $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
$req="select distinct etablissement.id_etablissement,etablissement from etablissement,enseignement,domaine where enseignement.id_etablissement=etablissement.id_etablissement and enseignement.id_domaine='".$id."'";
            $rep = $bdd->query($req); 

            while($liste=$rep->fetch())
            {
              echo'<tr>';
                echo '<td>'.$liste['etablissement'].'</td>';
                echo '<td><a href="choisirParDomaine.php?id='.$liste["id_etablissement"].'">Choisir<td>';
                echo '<br>';
                echo'</tr>';
            }
    
    
?>
    </table>
</div>


</div>
<p class="pied">“La rétention de l'information est une forme de constipation du savoir.”</p>

</body>
</html>