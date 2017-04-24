
<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>Index</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<?php session_start(); ?>
</HEAD>
<body>


<div id="bandeau"> 
<?php
	$bdd= new PDO('mysql:host=localhost;dbname=gestionetab;charset=utf8', 'root', '');
	$id_ut=$_SESSION['utilisateur'][0];
	$rep = $bdd->query('select id_utilisateur from utilisateur where nom="'.$id_ut.'"');
	$line = $rep ->fetch(); 
     //echo $id_ut;
	
  //echo $id_ut;
  //print_r($_SESSION['utilisateur']);
	if(isset($_SESSION['utilisateur'])){
		$req="INSERT INTO choisi (id_utilisateur,id_etab) VALUES('".$line['id_utilisateur']."','".$_GET['id_etab']."')";
		//echo $req;
		//$rep = $bdd->query("INSERT INTO choisi (id_etab,id_utilisateur) values('".$_GET['id_etab'])."','".$_SESSION['id_utilisateur']."')";
		//echo $req;
		$bdd->exec($req);
		echo "Votre Choix à bien été effectuer ";
	}
	else{
			//echo "zeb";
				 $req="INSERT INTO choisi (id_utilisateur,id_etab) VALUES('".$line['id_utilisateur']."','".$_GET['id_etab']."')";

			//	 $bdd->exq($req);
			//echo $req;

	}
	?>	

<a href="index1.php">Retour</a>






</div>
</body>
</HTML>