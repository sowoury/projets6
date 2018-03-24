<?php
 session_start();
 ?>
 <!DOCTYPE HTML>
<HTML>
<head>
<TITLE>connecter</TITLE>
<link rel="stylesheet"    href="stylecss/mon.css"    type="text/css"    media="screen"    /> 
<?php
if($_GET['email']== ""|| $_GET['mot1']== ""){	
	echo'<meta http-equiv="refresh" content="0; url=index.php">';
	
}
else{

	
		$bdd = new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
		$query = "select * from etudiant where email='".$_GET ['email']."' && mot_passe='".$_GET['mot1']."'";
		$rep = $bdd->query($query);
		$ligne = $rep ->fetch();
		if($ligne['nom']!=""){
			$_SESSION['etudiant']=array($ligne['nom'],$ligne['prenom'],$ligne['phone'],$ligne['email'],$ligne['id_etudiant']);
			
		  echo '<meta http-equiv="Refresh" content="0;url=user.php">';
		}
		else{
			$query = "select * from admin where email='".$_GET ['email']."' and  mot_passe='".$_GET['mot1']."'";
			$rep = $bdd->query($query);		
			$val = $rep ->fetch();
			if($val['nom']=""){
				$_SESSION['admin']=array($val['nom'],$val['prenom'],$val['email']);
				echo '<meta http-equiv="Refresh" content="0;url=admin.php">';
			}
			else{
				echo '<meta http-equiv="Refresh" content="0;url=admin.php">';
					
			}
		}
		
	
    }
	
?>
</head>
<body>

</body>
</html>