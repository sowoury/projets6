<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>nouveau</TITLE>
<link rel="stylesheet" href="stylecss/mon.css" type="text/css" media="screen"/>

<?php
function enregistrer($nom, $prenom, $email, $mot_passe, $photo){
	try{
		$bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
		$req="INSERT INTO admin(nom, prenom, email,mot_passe,photo) VALUES('".$nom."','".$prenom."','".$email."','".$mot_passe."','".$photo."')";
		$rep = $bdd->query($req); 
	}
	catch( Exception $e)
	{
		die ('Erreur :'.$e->getMessage());
	}
}

if(($_GET['mot1']!= $_GET['mot2'])|| ($_GET['n']=="") ||($_GET['p']=="")||($_GET['email']=="")||($_GET['photo']=="")){
	
	echo '<meta http-equiv="Refresh" content="0;url=nadmin.php">';
}
else{
	enregistrer($_GET['n'],$_GET['p'],$_GET['email'],$_GET['mot1'],$_GET['photo']);
	echo '<meta http-equiv="Refresh" content="0;url=admin.php">';
	 
}
	
?>

</HEAD>
<body>

</body>
</html>