<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>liste_commune</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</HEAD>
<body>
<div id="entete"><p class="titre" >La liste des  commune </p></div>
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
if(isset($_SESSION['departement'])){
	$d=$_GET['id_depart'];

//echo $r;
$rep = $bdd->query('select id_com,nom_com from commune as C where C.id_depar="'.$d.'"');
}else{
	$rep = $bdd->query('select id_com, nom_com from commune');
	}
echo "<table border='2' class='table1' >";
echo "<tr>";
echo "<th> Identifiant</th>";
echo "<th>Nom de la commune</th>";
echo "</tr>";
while ($line = $rep ->fetch()) { 
$_SESSION['commune']=array();
array_push($_SESSION['commune'],$line["id_com"]);
//print_r($_SESSION['commune']);
echo "<tr>";
echo "<th>".$line["id_com"]."</th>";
echo "<th><a href='liste_etab.php?id_com=".$_SESSION['commune'][0]."'>".$line["nom_com"]."</a></th>";
echo "</tr>";
}
echo "</table>";
$rep ->closeCursor();
unset($_SESSION['departement']);

?>
<a href="index.php">Retoure sur la page precedente</a>
</div>
</body>
</html>