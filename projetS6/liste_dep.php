<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>liste_departements</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</HEAD>
<body>
<div id="entete"><p class="titre" >La liste des  departements </p></div>
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
session_start();


if(isset($_SESSION['region'])){
	$r=$_GET['id_reg'];
	//echo $r;
	$rep = $bdd->query('select id_depar,D.nom_depar from departement as D where D.id_reg="'.$r.'"');
	//print_r($rep) ;
	}else{
			$rep = $bdd->query('select id_depar,D.nom_depar from departement as D');
	
	}
	//$_SESSION['region'][0];
	//echo $r;
echo "<table border='2' class='table1' >";
echo "<tr>";
echo "<th> Identifiant</th>";
echo "<th>Nom du Departement</th>";
echo "</tr>";
while ($line = $rep ->fetch()) { 
//print_r($line);
$_SESSION['departement']=array();
array_push($_SESSION['departement'],$line["id_depar"]);
//print_r($_SESSION['departement']);
echo "<tr>";
echo "<th>".$line["id_depar"]."</th>";
echo "<th><a href='liste_commune.php?id_depart=".$_SESSION['departement'][0]."'>".$line["nom_depar"]."</a></th>";
echo "</tr>";
}
echo "</table>";
$rep ->closeCursor();
unset($_SESSION['region']);
?>
<a href="index.php">Retoure sur la page precedente</a>
</div>
</body>
</html>