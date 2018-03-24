<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>nouveau</TITLE>
<link rel="stylesheet" href="stylecss/mon.css" type="text/css" media="screen"/>

<?php
function enregistrer($id_domaine, $domaine){
    echo"tot";
	try{
        
		$bdd= new PDO('mysql:host=localhost;dbname=monbd;charset=utf8', 'root', '');
		$req="INSERT INTO domaine(id_domaine, domaine) VALUES('".$id_domaine."','".$domaine."')";
		$rep = $bdd->query($req); 
        echo"tota";
	}
	catch( Exception $e)
	{
		die ('Erreur :'.$e->getMessage());
	}
}

if( ($_GET['n']=="") ||($_GET['p']=="")){
    echo"tout";
	
	echo '<meta http-equiv="Refresh" content=""0;url=domaine.php">';
}
else{
    echo"tete";
	enregistrer($_GET['n'],$_GET['p']);
    echo"totera";
	echo '<meta http-equiv="Refresh" content=""0;url=admin.php">';
	 
}
	
?>

</HEAD>
<body>

</body>
</html>