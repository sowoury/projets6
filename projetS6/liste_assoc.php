<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>liste_association</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</HEAD>
<body>
<div id="entete"><p class="titre" >La liste des  Associations </p></div>
<div class="menu">
<ul>
		<li><a href="index.php">Acceuil</a></li>
		<li><a href="liste_etab.php">Etablissement</a></li>
		<li><a href="liste_commune.php">Commune</a></li>
		<li><a href="liste_dep.php">Departement</a></li>
		<li><a href="liste_region.php">Region</a></li>
		<li><a href="liste_assoc.php">Association</a></li>
		<li><a href="contact.php">Contact</a></li>
</ul>
</div>

<div id="bandeau">

<?php

$bdd= new PDO('mysql:host=localhost;dbname=gestionetab;charset=utf8', 'root', '');
$rep = $bdd->query('select id_association, nom from association');
echo "<table border='2' class='table1' >";
echo "<tr>";
echo "<th> Identifiant</th>";
echo "<th>Nom de l'Association</th>";
echo "</tr>";
while ($line = $rep ->fetch()) { 
echo "<tr>";
echo "<th>".$line['id_association']."</th>";
echo "<th>".$line['nom']."</a></th>";
echo "</tr>";
}
echo "</table>";
$rep ->closeCursor();
?>
<a href="index.php">Retoure sur la page precedente</a>
</div>
</body>
</html>