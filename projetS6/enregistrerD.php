<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>enregistrer</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 

<?php
function enregistrer($id_depar,  $nom, $id_reg){
	
		$bdd= new PDO('mysql:host=localhost;dbname=gestionetab;charset=utf8', 'root', '');
		$req="INSERT INTO departement(id_depar,nom,id_reg) VALUES('".$id_depar."','".$nom."','".$id_reg."')";
		$rep = $bdd->query($req); 
	
}

if( ($_GET['mid']=="") ||($_GET['n']=="")||($_GET['id']=="")){
	
	echo '<meta http-equiv="Refresh" content="0;url=departement.php">';

}


else{
	enregistrer($_GET['mid'],$_GET['n'],$_GET['id']);
	echo '<meta http-equiv="Refresh" content="0;url=index2.php">';
	
}
	
?>

</HEAD>
<body>

</body>
</html>