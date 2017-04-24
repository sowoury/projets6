<?php
 session_start();
 ?>
<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>Index1</TITLE>
<link rel="stylesheet"    href="mon.css"    type="text/css"    media="screen"    /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />



</HEAD>
<body>
<div id="entete"><p class="titre" ><?php

if (isset($_SESSION['utilisateur'])){	
          echo"Bonjour";
		  echo " ";
		  echo"et";
		  echo " ";
		  echo"bien venu";
		  echo " ";
		  echo $_SESSION['utilisateur'][0];	
		  echo " ";
	      echo $_SESSION['utilisateur'][1];
		  echo"<br>";
	      echo'<a href="deconnexion.php">Deconnexionon</a>';
		
	}	

?>	 </p></div>
<div class="menu">
<ul>
		<li><a href="index.php">Acceuil</a></li>
		<li><a href="liste_etab.php">Etablissement</a></li>
		<li><a href="liste_commune.php">Commune</a></li>
		<li><a href="liste_dep.php">Departement</a></li>
		<li><a href="liste_region.php">Region</a></li>
		<li><a href="liste_assoc.php">Association</a></li>
		<li><a href="contact.php">Contact</a></li>
</ul>
</div>

<div id="bandeau">
<h1>Les degrés de diplômes</h1>
<h2>La licence</h2>
<p>En France, le diplôme national de licence se prépare en six semestres. Il se substitue à l'ancien diplôme d'études universitaires générales (D.E.U.G.) en deux ans suivi de la licence en un an. En revanche, les brevets de technicien supérieur (B.T.S.), les diplômes universitaires de technologie (D.U.T.), les diplômes d'études universitaires scientifiques et techniques (DEUST) et la licence professionnelle demeurent. Les étudiants de B.T.S., D.U.T. ou DEUST ainsi que les élèves des classes préparatoires aux grandes écoles peuvent demander à intégrer la préparation de cette nouvelle licence.

Les étudiants ayant obtenu leur B.T.S., D.U.T. ou DEUST ou ayant validé les quatre premiers semestres de la licence peuvent demander à entrer en licence professionnelle. Cette dernière se prépare en deux semestres.</p>
<h2>Le master</h2>
<p>A l'issue de la licence, les étudiants peuvent préparer  le diplôme de master  qui sanctionne des parcours types de formation initiale ou continue répondant à un double objectif :
<ol type="square">
<li>préparer les étudiants, via les études doctorales, à se destiner à la recherche ;</li>
<li>leur offrir un parcours menant à une qualification et une insertion professionnelle de haut niveau.</li>
</ol>
<p>Il se prépare en quatre semestres (il correspond à un diplôme bac + 5 années d'études).</p>
</p>
<h2>Le doctorat</h2>
<p>A l'issue du cursus Master, les étudiants peuvent s'inscrire en vue de préparer un doctorat. Tous les étudiants titulaires du grade de Master peuvent se porter candidat à une inscription en thèse de doctorat, qu'ils aient obtenu un diplôme de master, ou qu'ils soient titulaires d'un titre d'ingénieur ou un diplôme d'école supérieure de commerce conférant le grade de Master.
La durée de préparation du doctorat est en règle générale de trois ans (il correspond à un diplôme bac + 8 années d'étude).</p>


</div>
</body>
</html>