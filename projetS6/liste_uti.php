<HTML>
<HEAD>
<TITLE>liste_association</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</HEAD>
<body>
<div id="entete"><p class="titre" >Contact </p></div>
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
$rep = $bdd->query('select nom, prenom, email from utilisateur');
echo "<table border='2' class='table1' >";
echo "<tr>";
echo "<th> Nom</th>";
echo "<th> Prénom</th>";
echo "<th>email</th>";
echo "</tr>";
while ($line = $rep ->fetch()) { 
echo "<tr>";
echo "<th>".$line['nom']."</th>";
echo "<th>".$line['prenom']."</th>";
echo "<th>".$line['email']."</a></th>";
echo "</tr>";
}
echo "</table>";
$rep ->closeCursor();
?>
<a href="index.php">Retoure sur la page precedente</a>
</div>
</body>
</html>