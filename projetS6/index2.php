<?php
 session_start();
 ?>
<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>index2</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<?php

if (isset($_SESSION['administrateur'])){	
          echo"Bonjour";
		  echo " ";
		  echo"et";
		  echo " ";
		  echo"bien venu";
		  echo " ";
		  echo $_SESSION['administrateur'][0];	
		  echo"<br>";
	      echo'<a href="deconnexion.php">Deconnexionon</a>';
		
	}	

?>	


</HEAD>
<body>
<div id="entete"><p class="titre" >Bien venu sur la page d'administration <a href="deconnexion.php">Deconnexionon</a></p></div>
<div class="menu">
<ul>
		<li><a href="index.php">Acceuil</a></li>
		<li><a href="#">Etablissement</a>
		<ul>
			<li><a href="liste_etab.php">Liste-Etablissement</a></li>
			<li><a href="etablissement.php">Ajouter-Etablissement</a></li>
		</ul>
		
		</li>
		
		<li><a href="#">Commune</a>
		<ul>
			<li><a href="liste_commune.php">Liste-Commune</a></li>
			<li><a href="commune.php">Ajouter-Commune</a></li>
		
		</ul>
		</li>
		
		<li><a href="#">Departement</a>
		<ul>
			<li><a href="liste_dep.php">Liste-Departement</a></li>
			<li><a href="departement.php">Ajouter-Departement</a></li>
		</ul>
		</li>
		
		<li><a href="#">Region</a>
		<ul>
			<li><a href="liste_region.php">Liste-Region</a></li>
			<li><a href="region.php">Ajouter-Region</a></li>
		</ul>
		</li>
		
		<li><a href="#">Association</a>
		<ul>
			<li><a href="liste_assoc.php">Liste-Association</a></li>
			<li><a href="association.php">Ajouter-Association</a></li>
		
		</ul>
		</li>
		
		<li><a href="#">Utilisateur</a>
		<ul>
			<li><a href="liste_uti.php">Liste-Utilisateur</a></li>
			<li><a href="inscription.php">Ajouter-Utilisateur</a></li>
		
		</ul>
		</li>
		<li><a href="#">administrateur</a>
		<ul>
			<li><a href="contact.php">Liste-Administrateur</a></li>
			<li><a href="admin.php">Ajouter-Administrateur</a></li>
		
		</ul>
		</li>
		<li><a href="liste_choi.php">Choix</a></li>
		
</ul>
</div>

<div id="bandeau">
	<H1>La gestion de connexion :</H1> 
<P>Un administrateur donné, à la posibilité d'ajouter un  utilisateur, un administrer  et toute les possibilte d'ajout nessecaire a l’administrateur afin d’avoir le compte.
Par contre, à chaque fois qu’on ajoute un utilisateur ou un Administrateur dans la base, on doit saisir leur login et leur mot de passe avec les informations de base, et selon le type d’ajout on remplit un champ type dans la table login qui peut être ‘Admin’, ‘Utilisateur’ . C’est A partir de ce champ qu’on va créer les sessions appropriés. Une fois quelqu’un se connect, on crée une variable de session ( SESSION[‘admin’],  SESSION[‘utilisateur'] ).en les remplissant par ses propres identifiant .
<h1>Les privilèges :</h1>
<p>L’administrateur dispose de tous les privilèges (afficher, ajouter, modifier, supprimer, chercher..). L’utilisateur peut visualiser tous les tables, chercher une region, un etablissement, une commune, un departement, ajouter un etablissement, une commune, un region, un utilisateur, un administrateur  et un departement, ainsi que les  modifiés . </p>

</table>
<table class="im1">
<tr>
<th><a href="#"><img src="strag.jpg"/></a></th>
<th><p>La qualite de l'universite française fait sa differance sur le marché</p></th>
<th><a href="#"><img src="paulsabati.png"/></a></th>
</tr>

</table>

</div>
</body>
</html>