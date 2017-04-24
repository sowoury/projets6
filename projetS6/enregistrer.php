<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>enregistrer</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 

<?php
function enregistrer($nom, $prenom, $adresse, $tel, $age, $sexe, $email, $mot_passe){
	
		$bdd= new PDO('mysql:host=localhost;dbname=gestionetab;charset=utf8', 'root', '');
		$req="INSERT INTO utilisateur(nom, prenom,adresse,tel,age,sexe,email,mot_passe) VALUES('".$nom."','".$prenom."','".$adresse."','".$tel."','".$age."','".$sexe."','".$email."','".$mot_passe."')";
		$rep = $bdd->query($req); 
	
}
if(($_GET['mot1']!= $_GET['mot2'])|| ($_GET['n']=="") ||($_GET['p']=="")||($_GET['adr']=="")||($_GET['num']=="")||($_GET['age']=="")||($_GET['sexe']=="")||($_GET['email']=="")){
	
	echo '<meta http-equiv="Refresh" content="0;url=inscription.php">';
}
else{
	enregistrer($_GET['n'],$_GET['p'],$_GET['adr'],$_GET['num'],$_GET['age'],$_GET['sexe'],$_GET['email'],$_GET['mot1']);
	echo '<meta http-equiv="Refresh" content="0;url=index1.php">';
}
	
?>

</HEAD>
<body>

</body>
</html>