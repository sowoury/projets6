<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>nouveau</TITLE>
<link rel="stylesheet" href="stylecss/mon.css" type="text/css" media="screen"/>

<?php
function enregistrer($id_discipline, $discipline){
	try{
		$bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
		$req="INSERT INTO discipline(id_discipline,discipline) VALUES('".$id_discipline."','".$discipline."')";
		$rep = $bdd->query($req); 
	}
	catch( Exception $e)
	{
		die ('Erreur :'.$e->getMessage());
	}
}

if( ($_GET['n']=="") ||($_GET['p']=="")){
	
	echo '<meta http-equiv="Refresh" content=""0;url=discipline.php">';
}
else{
	enregistrer($_GET['n'],$_GET['p']);
	echo '<meta http-equiv="Refresh" content=""0;url=admin.php">';
	 
}
	
?>

</HEAD>
<body>

</body>
</html>