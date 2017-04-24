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
<div id="entete"><p class="titre" >Entrez une region </p></div>
<div id="bandeaug"> 
<H1>Bien venus sur Notre platre forme</H1>
<p>Veuillez entrer toute les informations d'une region</p>
<p>Une région française est à la fois une division administrative du territoire de la France, une collectivité territoriale décentralisée dotée de la personnalité juridique et d'une liberté d'administration, une circonscription électorale et une circonscription administrative des services déconcentrés de l'État</p>
<img src="téléchargementr.jpg"/><br/>
<p>Les régions, en tant que collectivités, sont dotées de deux assemblées, contrairement aux autres collectivités qui n'en possèdent qu'une : une assemblée délibérante, le conseil régional, et une assemblée consultative, le conseil économique, social et environnemental régional, représentatif des « forces vives » de la région, chargé de donner des avis sur certaines questions entrant dans les compétences de la région, avant qu'elles ne soient soumises au conseil régional. Le président du conseil régional constitue quant à lui l'exécutif de la collectivité.</p>
</div>
<div id="bandeaud"> 

<fieldset>
<legend align="center"><b>Entrez une region</b></legend>
<form name="my_form" action="enregistreRr.php" method="GET">
    <p> <label for="id_reg">Id_region</label> <input type="varchar" name="id" id="elt"	onkeypress="keyPressInput('elt')"> </p>
	<p> <label for="nom">Nom</label> <input type="text" name="n" id="elt"	onkeypress="keyPressInput('elt')"> </p>
	<p><label for="valider"></label><input type="submit" value="Valider" /></p>
	
</form>
</fieldset><br/>
<img src="France_18_regions.png"/>

</div>
</body>
</html>