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
  <li><a href="infoetab.php" >Etablissement</a></li>
  <li><a href="infosDom.php" >Domaine</a></li>
  <li><a href="infoGradiscip.php" >Discipline</a></li>
  <li><a href="contact.php" >Contact</a></li>
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
 <table class="table"   border="1">
     <tr>
         <td>Identifiant</td>
          <td>Domaine</td>
          <td>Actions</td>
         <?php
            $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
            $rep = $bdd->query('select id_domaine,domaine from domaine');
            while ($ligne = $rep ->fetch())
            {
                echo '<tr>';
                echo '<td>'.$ligne['id_domaine'].'</td>';
                echo '<td>'.$ligne['domaine'].'</td>';
                echo '<td><a href="deleteDom.php? id='.$ligne['id_domaine'].'">Delete</a>|
                        <a href="modifierDom.php? id='.$ligne['id_domaine'].'">modifier</a>|
                       
                
                </td>';
                echo '</tr>';
            }
         ?>
          
         
     
     </tr>
     
 </table>
 </div>
</div>
<p class="pied">“La rétention de l'information est une forme de constipation du savoir.”</p>

</body>
</html>