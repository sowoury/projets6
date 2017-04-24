<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>Index</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</HEAD>
<script>	
	 	functon keyPressInput(e){	
			var	elt	=	document.getElementById(e);	
			elt.style	=	"background-color:	blue;";	
	 	}	
</script>
<body>
<div id="entete"><p class="titre" >Entrez une association </p>


</div>
<div id="bandeaug"> <H1>Bien venus sur Notre platre forme</H1>
<p>Veuillez entrer toute les informations d'une commune</p>
<p>Le GLUP (Groupe LGBT, Lesbienne Gay Bi' et Trans',des Universités de Paris) est une association qui regroupe des étudiants de toutes les universités parisiennes autour de projets :

conviviaux (soirées ''PULPE'', apéros, pique-niques...)
militants (surveillance des discriminations, participation aux journées symboliques comme le 17 mai, la Marche des Fiertés...)
culturels (rédaction du magazine Ganymède ayant pour thème la Culture et la Sexualité, sorties cinéma, concerts, théâtre...)
et préventifs (tenue de stands sur la prévention dans les universités, distribution de préservatifs, accueil des étudiants...)
Le GLUP a été impulsé grâce au Caélif (Collectif des Associations Étudiantes LGBT d'Île-de-France) le 3 mars 2010. Devenue depuis une association à part entière, mais toujours membre du Caélif ; le Glup est un élément particulièrement dynamique de la vie universitaire parisienne.

Gay, Lesbiennes, Bi', Trans', et Hétéros, toutes et tous sont les bienvenu-e-s ! Venez nous aider, ou simplement nous rencontrer, participer, vous amuser. </p>
<img src="téléchargemen1t.png"/>
<img src="téléchargement3.jpg"/>
</div>
<div id="bandeaud"> 

<fieldset>
<legend align="center"><b>Entrez une association</b></legend>
<form name="my_form" action="enregistrerAS.php" method="GET">
    <p> <label for="id_association">Id_association</label> <input type="varchar" name="id" id="elt"	onkeypress="keyPressInput('elt')"> </p>
	<p> <label for="nom">Nom</label> <input type="text" name="n" id="elt"	onkeypress="keyPressInput('elt')"> </p>
	<p><label for="valider"></label><input type="submit" value="Valider" /></p>
	
</form>
</fieldset>
<img src="téléchargement2.jpg"/>
<img src="images.png"/>
<p>Parismus est une association créée par des étudiants pour les étudiants, elle a pour but de développer les liens entre Français et Etudiants étrangers. Au programme : sorties, soirées, visites, dîners internationaux, tandems binationaux… La possibilité de rencontrer des étudiants de tous horizons et de s’enrichir à leur contact.</p>
</div>
</body>
</html>