<?php
 session_start();
 ?>
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
<legend align="center"><b>Espace prive</b></legend>
<img src="images/logo.png" alt= "log " />
</fieldset><br>

</div>
<div id="desc">
  <table class="table" border="1">
<tr><td style="background-color:#1F3C57;">Liste des etablissements</td></td></tr>
           

         <?php
            $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
            $req="select id_etablissement,etablissement from etablissement";
            $rep = $bdd->query($req); 
            while($liste=$rep->fetch())
            {
               echo '<tr>';
                echo '<td><a href="etablissementInfoconecte.php?id='.$liste['id_etablissement'].'">'.$liste['etablissement'].'<td></a>';
                echo '<br>';
               echo'</tr>';
            }
         ?>
          <!-- </tr>-->

</table>
</div>


</div>
<p class="pied">“La rétention de l'information est une forme de constipation du savoir.”</p>

</body>
</html>