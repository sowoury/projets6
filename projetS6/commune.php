<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>commune</TITLE>
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
<div id="entete"><p class="titre" >Entrez une commune </p></div>
<div id="bandeaug">
<H1>Bien venus sur Notre platre forme</H1>
<p>Veuillez entrer toute les informations d'une commune</p>
<p>En France, selon la loi, la commune est une collectivité territoriale1. Ses organes sont le conseil municipal, le maire et, le cas échéant, un ou plusieurs adjoints. Elle n'est pas une circonscription territoriale des services déconcentrés des administrations civiles de l'État.
Concrètement, la commune est le territoire administré par une municipalité, seule dépositaire de l'état civil et du cadastre. Elle est donc l'échelon de base des divisions administratives du territoire. Les trois plus grandes villes françaises ont été découpées en arrondissements dits municipaux, mais l'essentiel des pouvoirs a été laissé aux trois municipalités centrales.
Historiquement, la commune française est l'héritière de la communauté ou de la paroisse de l'Ancien Régime. La communauté était une circonscription fiscale qui portait aussi le nom de paroisse fiscale (dans les villes à deux ou plusieurs clochers) ou de collecte. Son ressort pouvait correspondre, ou pas (Languedoc), à la paroisse ecclésiastique.
</p>
<p>Sa superficie et sa population peuvent varier considérablement. Paris est la commune la plus peuplée avec 2 249 975 habitants en 2011, tandis que la commune habitée la moins peuplée, Rochefourchat, a un seul habitant et que six communes déclarées « villages morts pour la France » n'ont aucun habitant (voir infra). Seules les communes, départements et régions constituent des Collectivités Territoriales, à l'opposé des villes et autres dénominations juridiques non officielles, selon la Convention nationale du 10 brumaire an II (31 octobre 1793). La commune de Paris a un statut particulier au même titre que Lyon et Marseille, visé par la loi du 2 mars 1982, dite Loi PLM3.</p>

 </div>
<div id="bandeaud"> 

<fieldset>
<legend align="center"><b>Entrez une commune</b></legend>
<form name="my_form" action="enregistrerC.php" method="GET">
    <p> <label for="id_com">Id_commune</label> <input type="varchar" name="id" id="elt"	onkeypress="keyPressInput('elt')"> </p>
	<p> <label for="nom">Nom</label> <input type="text"  name="n" id="elt"	onkeypress="keyPressInput('elt')"> </p>
	<p> <label for="id_depar">id_departement</label> <input type="varchar" name="ma" id="elt"	onkeypress="keyPressInput('elt')"> </p>
	<p><label for="valider"></label><input type="submit" value="Valider" /></p>
	
</form>
</fieldset>
<img src="commune.png"/>
<img src="téléchargementco.jpg"/>
</div>
</body>
</html>