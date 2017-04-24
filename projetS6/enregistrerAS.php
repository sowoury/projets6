<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>enregistrer</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 

<?php
function enregistrer($id_association,$nom){
	
		$bdd= new PDO('mysql:host=localhost;dbname=gestionetab;charset=utf8', 'root', '');
		$req="INSERT INTO association(id_association,nom) VALUES('".$id_association."','".$nom."')";
		$rep = $bdd->query($req); 
	
}
if( ($_GET['id']=="")||($_GET['n']=="")){
	
	echo '<meta http-equiv="Refresh" content="0;url=association.php">';

}


else{
	enregistrer($_GET['id'],$_GET['n']);
	echo '<meta http-equiv="Refresh" content="0;url=index2.php">';

}
	
?>

</HEAD>
<body>

</body>
</html>