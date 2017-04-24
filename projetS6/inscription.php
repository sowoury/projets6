<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>Index</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</HEAD>
<body>
<div id="entete"><p class="titre" >Entrez vos informations </p></div>
<div id="bandeaug">
<H1>Bien venus sur Notre platre forme</H1>
<p>Veuillez entrer toute vos informations pour avoir plus de facilite d'utilisation de nos services</p>  
</div>
<div id="bandeaud"> 

<fieldset>
<legend align="center"><b>Entrez Vos Informations</b></legend>
<form name="my_form" action="enregistrer.php" method="GET">
	<p> <label for="nom">Nom</label> <input type="text" name="n" id="nom"> </p>
	<p> <label for="prenom">Prenom</label> <input type="text" name="p" id="Prenom"> </p>
	<p> <label for="adresse">Adresse</label> <input type="text" name="adr" id="adresse"> </p>
	<p> <label for="tel">Tel</label> <input type="bigint" name="num" id="tel"> </p>
	<p> <label for="age">Age</label> <input type="text" name="age" id="age"> </p>
	<p> <label for="sexe">Sexe</label> <input type="text" name="sexe" id="sexe"> </p>
	<p> <label for="email">Email</label> <input type="text" name="email" id="email"> </p>
	<p> <label for="mot_passe">Mot_passe</label> <input type="text" name="mot1" id="mot_passe"> </p>
	<p> <label for="confirmer">Confirmer</label> <input type="text" name="mot2" id="confirmer"> </p>
	<p><label for="valider"></label><input type="submit" value="Valider" /></p>
	
</form>
</fieldset>

</div>
</body>
</html>