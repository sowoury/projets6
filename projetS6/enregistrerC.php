<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>enregistrer</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 

<?php
function enregistrer( $id_com, $nom, $id_depar ){
	
		$bdd= new PDO('mysql:host=localhost;dbname=gestionetab;charset=utf8', 'root', '');
		$req="INSERT INTO commune(id_com,nom,id_depar) VALUES('".$id_com."','".$nom."','".$id_depar."')";
		$rep = $bdd->query($req); 
	
}

if( ($_GET['id']=="") ||($_GET['n']=="")||($_GET['ma']=="")){
	
	echo '<meta http-equiv="Refresh" content="0;url=commune.php">';

}


else{
	enregistrer($_GET['id'],$_GET['n'],$_GET['ma']);
	echo '<meta http-equiv="Refresh" content="0;url=index2.php">';
	
}
	
?>

</HEAD>
<body>

</body>
</html>