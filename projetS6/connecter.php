<?php
 session_start();
 ?>
 <!DOCTYPE HTML>
<HTML>
<head>
<TITLE>connecter</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 
<?php
if($_GET['email']== ""|| $_GET['mot1']== ""){	
	echo'<meta http-equiv="refresh" content="0; url=index.php">';
	
}
else{

	
		$bdd = new PDO('mysql:host=localhost;dbname=gestionetab;charset=utf8', 'root', '');
		$query = "select * from utilisateur where email='".$_GET ['email']."' && mot_passe='".$_GET['mot1']."'";
		$rep = $bdd->query($query);
		$ligne = $rep ->fetch();
		if($ligne['nom']!=""){
			$_SESSION['utilisateur']=array($ligne['nom'],$ligne['prenom'],$ligne['adresse'],$ligne['tel'],$ligne['age'],$ligne['sexe'],$ligne['email'],$ligne['id_utilisateur']);
			//$_SESSION['id_ut']=array($ligne['id_utilisateur']);
		  echo '<meta http-equiv="Refresh" content="0;url=index1.php">';
		}
		else{
			$query = "select * from administrateur where email='".$_GET ['email']."' and  mot_passe='".$_GET['mot1']."'";
			$rep = $bdd->query($query);		
			$val = $rep ->fetch();
			if($val['nom']=""){
				$_SESSION['administrateur']=array($val['nom'],$val['email'],$val['peseudo']);
				echo '<meta http-equiv="Refresh" content="0;url=index2.php">';
			}
			else{
				echo '<meta http-equiv="Refresh" content="0;url=index2.php">';
					
			}
		}
		
	
    }
	
?>
</head>
<body>

</body>
</html>