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
<div id="entete"><p class="titre" >Entrez un etablissement </p></div>
<div id="bandeaug">
<H1>Bien venus sur Notre platre forme</H1>
<p>Veuillez entrer toute les informations d'un etablissement</p>
<p>En France, une université est un établissement dont l’objectif est la transmission du savoir (enseignement supérieur) par sa conservation (bibliothèques universitaires), sa valorisation et sa production (recherche) dans plusieurs domaines.
La première université est créée à Paris en 1200. Supprimées lors de la Révolution et restaurées par la suite, les universités françaises sont au nombre de 71 en 2016.
Ce sont des établissements publics, administrés de façon démocratique, et bénéficiant d’une certaine autonomie. Les enseignements sont accessibles pour toute personne titulaire du baccalauréat. Les études universitaires classiques débouchent sur la licence (trois ans après le baccalauréat), le master (deux ans après la licence), le doctorat (trois ans après le master). D’autres filières permettent les formations aux métiers de la santé, aux diplômes universitaires de technologie et à des formations d'ingénieurs au sein d'écoles d'ingénieur intégrées… En 2013-2014, il y avait 1,462 millions d’étudiants inscrits dans les universités (y compris les IUT), sur un total de 2,386 millions d'inscrits dans l'enseignement supérieur1, soit un peu plus de 60 %.
Les enseignants-chercheurs dispensent les enseignements et assurent des activités de recherche. Les laboratoires de l’université sont souvent des unités mixtes de recherche avec les organismes français de recherche.</p>
<img src="universite_rouen_cover.png"/>
</div>
<div id="bandeaud"> 

<fieldset>
<legend align="center"><b>Entrez un etablissement</b></legend>
<form name="my_form" action="enregistrerE.php" method="GET">
    <p> <label for="id_etab">Id_etablissement</label> <input type="varchar" name="id" id="elt"	onkeypress="keyPressInput('elt')"	> </p>
	<p> <label for="nom_etab">Nom_etablissement</label> <input type="text" name="n"  id="elt"	onkeypress="keyPressInput('elt')"	> </p>
	<p> <label for="sigle">Sigle</label> <input type="text" name="s"  id="elt"	onkeypress="keyPressInput('elt')"	> </p>
	<p> <label for="type">Type</label> <input type="text" name="t" id="elt"	onkeypress="keyPressInput('elt')"	> </p>
	<p> <label for="secteur">Secteur</label> <input type="text" name="se" id="elt"	onkeypress="keyPressInput('elt')"	> </p>
	<p> <label for="localisation">Localisation</label> <input type="text" name="l" id="elt"	onkeypress="keyPressInput('elt')"	> </p>
	<p> <label for="mention_distri">Mention de distribution</label> <input type="text" name="m" id="elt"	onkeypress="keyPressInput('elt')"	> </p>
	<p> <label for="adresse">Adresse</label> <input type="text" name="adr" id="elt"	onkeypress="keyPressInput('elt')"	> </p>
	<p> <label for="boite_postale">Boite_postale</label> <input type="text" name="b" id="elt"	onkeypress="keyPressInput('elt')"	> </p>
	<p> <label for="code_postale">Code_postale</label> <input type="text" name="c" id="elt"	onkeypress="keyPressInput('elt')"	> </p>
	<p> <label for="pays">Pays</label> <input type="text" name="p" id="elt"	onkeypress="keyPressInput('elt')"	> </p>
	<p> <label for="tel">Tel</label> <input type="bigint" name="te" id="elt"	onkeypress="keyPressInput('elt')"	> </p>
	<p> <label for="siret">Siret</label> <input type="text" name="si" id="elt"	onkeypress="keyPressInput('elt')"	> </p>
	<p> <label for="id_admin">Id_administrateur</label> <input type="text" name="ad" id="elt"	onkeypress="keyPressInput('elt')"	> </p>
	<p> <label for="id_com">Id_commune</label> <input type="text" name="co" id="elt"	onkeypress="keyPressInput('elt')"	> </p>
	<p><label for="valider"></label><input type="submit" value="Valider" /></p>
	
</form>
</fieldset>

</div>
</body>
</html>