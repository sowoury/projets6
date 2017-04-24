<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>Index</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</HEAD>
<body>
<div id="entete"><p class="titre" >Entrez un administrateur </p></div>
<div id="bandeaug"> </div>
<div id="bandeaud"> 

<fieldset>
<legend align="center"><b>Entrez son Informations</b></legend>
<form name="my_form" action="enregistrerA.php" method="GET">
    
	<p> <label for="nom">Nom</label> <input type="text" name="n" id="nom"> </p>
	<p> <label for="email">E-mail</label> <input type="text" name="email" id="email"> </p>
	<p> <label for="peseudo">Peseudo</label> <input type="text" name="p" id="peseudo"> </p>
	<p> <label for="mot_passe">Mot de passe</label> <input type="text" name="mot1" id="mot_passe"> </p>
	<p> <label for="confirmer">Confirmer</label> <input type="text" name="mot2" id="confirmer"> </p>
	<p><label for="valider"></label><input type="submit" value="Valider" /></p>
	
</form>
</fieldset>

</div>
</body>
</html>