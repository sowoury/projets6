<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>enregistrer</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 

<?php
function enregistrer($nom,  $email, $peseudo, $mot_passe){
	
		$bdd= new PDO('mysql:host=localhost;dbname=gestionetab;charset=utf8', 'root', '');
		$req="INSERT INTO administrateur(nom,email,peseudo,mot_passe) VALUES('".$nom."','".$email."','".$peseudo."','".$mot_passe."')";
		$rep = $bdd->query($req); 
	
}

if(($_GET['mot1']!= $_GET['mot2'])|| ($_GET['n']=="") ||($_GET['email']=="")||($_GET['p']=="")){
	
	echo '<meta http-equiv="Refresh" content="0;url=admin.php">';

}


else{
	enregistrer($_GET['n'],$_GET['email'],$_GET['p'],$_GET['mot1']);
	echo '<meta http-equiv="Refresh" content="0;url=index2.php">';
	
}
	
?>

</HEAD>
<body>

</body>
</html>