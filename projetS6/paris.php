<?php
 session_start();
 ?>
 <!DOCTYPE HTML>
<HTML>
<head>
<TITLE>detail</TITLE>
</head>
<?php 
	if(!isset($_SESSION["utilisateur"])){
		 echo '<meta http-equiv="Refresh" content="0;url=inscription.php">';
	}
	else{
	?>	
<?php

$bdd= new PDO('mysql:host=localhost;dbname=gestionetab;charset=utf8', 'root', '');
$rep = $bdd->query('select * from etablissement where  id_etab="0753559L"');

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
echo "<th><a href='comdetail.php?id_etab=".$line["id_etab"]."'>".$line["nom_etab"]."</th>"; 
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

?>
		
		
		
		
		
		<?php
	}
$rep ->closeCursor();
?>

<body>
</body>
<a href="index.php">Retoure sur index</a>
</html>