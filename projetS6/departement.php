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
<body>
<div id="entete"><p class="titre" >Entrez un departement </p></div>
<div id="bandeaug"> 
<H1>Bien venus sur Notre platre forme</H1>
<p>Veuillez entrer toute les informations d'un departement</p>
<p>Le département est une division territoriale de la France, tenant lieu à la fois de collectivité territoriale1 décentralisée, de circonscription territoriale des services déconcentrés de l'État2 et de circonscription électorale.
Leur création remonte au décret du 22 décembre 1789 pris par l'Assemblée constituante de 1789, effectif à partir du 4 mars 1790. Leurs limites sont fortement inspirées de projets de redécoupages du territoire plus anciens élaborés sous la royauté, par Marc-René d'Argenson dès 1665, par un édit en 1787, ou encore par Condorcet en 1788.
Ils sont au nombre de 101, depuis la départementalisation de Mayotte le 31 mars 20113,4, 96 d'entre eux appartenant aux 13 régions de la France métropolitaine5,6.
Dans les départements et les collectivités territoriales uniques, les lois et règlements sont applicables de plein droit. En France métropolitaine, il existe néanmoins un droit local alsacien-mosellan applicable dans les départements du Bas-Rhin, du Haut-Rhin et de la Moselle7,8. Leur territoire est régi à partir de leur capitale appelée préfecture.</p>
<img src="téléchargementd.jpg"/>
</div>
<div id="bandeaud"> 

<fieldset>
<legend align="center"><b>Entrez un departement</b></legend>
<form name="my_form" action="enregistrerD.php" method="GET">
    <p> <label for="id_depar">Id_departement</label> <input type="varchar"name="mid"  id="elt"	onkeypress="keyPressInput('elt')"> </p>
	<p> <label for="nom">Nom</label> <input type="text" name="n" id="elt"	onkeypress="keyPressInput('elt')"> </p>
	<p> <label for="id_reg">Id_region</label> <input type="varchar" name="id" id="elt"	onkeypress="keyPressInput('elt')"> </p>
	<p><label for="valider"></label><input type="submit" value="Valider" /></p>
	
</form>
</fieldset><br/>
<img src="France_départementale.svg.png"/>
</div>
</body>
</html>