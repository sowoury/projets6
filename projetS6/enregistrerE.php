<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>enregistrer</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 

<?php
function enregistrer($id_etab,$nom_etab,  $sigle, $type, $secteur,$localisation,$mention_distri,$adresse,$boite_postale,$code_postale,$pays,$tel,$siret,$id_admin,$id_com){
	
		$bdd= new PDO('mysql:host=localhost;dbname=gestionetab;charset=utf8', 'root', '');
		$req="INSERT INTO etablissement(id_etab,nom_etab,sigle,type,secteur,localisation,mention_distri,adresse,boite_postale,code_postale,pays,tel,siret,id_admin,id_com) VALUES('".$id_etab."','".$nom_etab."','".$sigle."','".$type."','".$secteur."','".$localisation."','".$mention_distri."','".$adresse."','".$boite_postale."','".$code_postale."','".$pays."','".$tel."','".$siret."','".$id_admin."','".$id_com."')";
		$rep = $bdd->query($req); 
	
}

if(($_GET['id']==""|| $_GET['n']=="")|| ($_GET['s']=="") ||($_GET['t']=="")||($_GET['se']=="")||($_GET['l']=="")||($_GET['m']=="")||($_GET['adr']=="")||($_GET['b']=="")||($_GET['c']=="")||($_GET['p']=="")||($_GET['t']=="")||($_GET['si']=="")||($_GET['ad']=="")||($_GET['co']=="")){
	
	echo '<meta http-equiv="Refresh" content="0;url=etablissement.php">';

}


else{
	enregistrer($_GET['id'],$_GET['n'],$_GET['s'],$_GET['t'],$_GET['se'],$_GET['l'],$_GET['m'],$_GET['adr'],$_GET['b'],$_GET['c'],$_GET['p'],$_GET['te'],$_GET['si'],$_GET['ad'],$_GET['co']);
	echo '<meta http-equiv="Refresh" content="0;url=index2.php">';
	
}
	
?>

</HEAD>
<body>

</body>
</html>