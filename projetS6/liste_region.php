<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>liste_region</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</HEAD>
<body>
<div id="entete"><p class="titre" >La liste des  Regions </p></div>
<div class="menu">
<ul>
		<li><a href="index.php">Acceuil</a></li>
		<li><a href="liste_etab.php">Etablissement</a></li>
		<li><a href="liste_commune.php">Commune</a></li>
		<li><a href="liste_dep.php">Departement</a></li>
		<li><a href="liste_region.php">Region</a></li>
		<li><a href="liste_assoc.php">Association</a></li>
		<li><a href="contact">Contact</a></li>
</ul>
</div>

<div id="bandeau">

<?php
session_start();
$bdd= new PDO('mysql:host=localhost;dbname=gestionetab;charset=utf8', 'root', '');
$rep = $bdd->query('select id_reg, nom_reg from region');
echo "<table border='2' class='table1' >";
echo "<tr>";
echo "<th> Identifiant</th>";
echo "<th>Nom de la Region</th>";
echo "</tr>";
$_SESSION['region']=array();

while ($line = $rep ->fetch()) { 
//print_r($line);
//echo $line['id_reg'];
array_push($_SESSION['region'],array($line["id_reg"],$line["nom_reg"]));
} 
	
//print_r($_SESSION['region']);
for($i=0;$i<count($_SESSION['region']);$i++){
//$hmar=$_SESSION['region'][$i][0];
//$kelb=$_SESSION['region'][$i][1];
//echo $hmar;
echo "<tr>";
echo "<th>".$_SESSION['region'][$i][0]."</th>";
echo "<th><a href='liste_dep.php?id_reg=".$_SESSION['region'][$i][0]."'>".$_SESSION['region'][$i][1]."</a></th>";
echo "</tr>";
}
echo "</table>";
$rep ->closeCursor();
//unset($_SESSION['region']);

?>
<a href="index.php">Retoure sur la page precedente</a>
</div>
</body>
</html>