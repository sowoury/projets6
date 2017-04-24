<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>liste_etablissements</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</HEAD>
<body>
<div id="entete"><p class="titre" >La liste des  etablissements </p></div>
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
session_start();
$bdd= new PDO('mysql:host=localhost;dbname=gestionetab;charset=utf8', 'root', '');

//echo $c;
if(isset($_SESSION['commune'])){
	$c=$_GET['id_com'];
	//$req='select id_etab, nom_etab, sigle, type, secteur, localisation, adresse, boite_postale, code_postale, pays, tel from etablissement where  id_com="'.$c.'" ';
	$rep = $bdd->query('select id_etab, nom_etab, sigle, type, secteur, localisation, adresse, boite_postale, code_postale, pays, tel from etablissement where  id_com="'.$c.'" ');
		//echo $req;
		}else{	
			$rep = $bdd->query('select id_etab, nom_etab, sigle, type, secteur, localisation, adresse, boite_postale, code_postale, pays, tel from etablissement');
}
echo "<table border='2' class='table' >";
echo "<tr>";

echo "<th>Nom de l'Universite</th>";
echo "<th>Type d'Universite</th>";
echo "<th>Secteur D'activite</th>";
echo "<th>Localisation</th>";
echo "<th>Adresse</th>";
echo "<th>Boite_postale</th>";
echo "<th>Code_postale</th>";
echo "<th>Pays</th>";

echo "</tr>";
while ($line = $rep ->fetch()) { 
echo "<tr>";
echo "<th><a href='comdetail.php?id_etab=".$line["id_etab"]."'>".$line["nom_etab"]."</a></th>"; 
echo "<th>".$line["type"]."</th>"; 
echo "<th>".$line["secteur"]."</th>";
echo "<th>".$line["localisation"]."</th>";
echo "<th>".$line["adresse"]."</th>";
echo "<th>".$line["boite_postale"]."</th>";
echo "<th>".$line["code_postale"]."</th>";
echo "<th>".$line["pays"]."</th>";

echo "</tr>";
}
echo "</table>";
$rep ->closeCursor();
unset($_SESSION['commune']);

?>
<a href="index.php">Retoure sur la page precedente</a>
</div>
</body>
</html>