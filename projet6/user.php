<?php
 session_start();
 ?>
<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE>Index</TITLE>
<link rel="stylesheet"    href="stylecss/mon.css"    type="text/css"    media="screen"    /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</HEAD>
<body>
<div id="entete">

</div>
<ul id="navigation">
  <li><a href="index.php" >Acceuil</a></li>
  <li><a href="etablissementconnecte.php" >Etablissement</a></li>
  <li><a href="domaineconecte.php" >Domaine</a></li>
  <li><a href="disciplineconecte.php" >Discipline</a></li>
  <li><a href="contacts.php" >Contact</a></li>

</ul>

<div id="bandeau">

<div id="connect">
<fieldset>
<legend align="center"><b>Espace prive</b></legend>
<img src="images/logo.png" alt= "log " />
</fieldset><br>

</div>
<div id="desc">
<fieldset>
<legend align="center"><b>Profile</b></legend>
<form action="connecter.php" method="GET" autocomplete="off">
<table border="0">
<?php      
        if (isset($_SESSION['etudiant'])){	
          echo"<p>Bienvenus dans votre espace personnel  </p>";
		  echo "<br> ";
		  echo $_SESSION['etudiant'][0];	
		  echo " ";
	      echo $_SESSION['etudiant'][1];
          echo " ";
	      
         
		  echo"<br>";
	      echo'<a href="deconnexion.php">Deconnexionon</a>';
          
		
	         }
                   
            ?>
</table>
</form>
    <a href="detail.php">PLUS DE DETAILS</a>
   </fieldset>

    
    <fieldset>
<legend align="center"><b>Recherche</b></legend>

    <p>Vous souhaitez poursuivre vos etudes dans l'une des grandes universités en France? <br>
    Ce suite a été mise en place pour simplifier vos recherches<br>
    Renseigner-vous sur les formations proposées en france par domaine ou par université</p>
     <form action="user.php" method="POST" autocomplete="off">
           
            Recherche :
                                                
                <select class="form-control" name="sele">
                    <option>selectioner</option>
                  <option>etablissement</option>
                  <option>domaine </option>
                 
        
                </select>
                <input type="submit" value="Valider" />
   
         </form>
    
<?php

    if(!empty($_POST))
    {
        
        
        $sec=$_POST['sele'];
        if($sec=="etablissement")
        {
        
            
            $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
            $req="select id_etablissement,etablissement from etablissement";
            $rep = $bdd->query($req); 
            while($liste=$rep->fetch())
            {
                echo '<a href="etablissementInfo.php?id='.$liste['id_etablissement'].'">'.$liste['etablissement'].'</a>';
                echo '<br>';
            }
        }elseif($sec=="domaine")
        {
        
            
            $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
            $req="select domaine,id_domaine from domaine";
            $rep = $bdd->query($req); 
            while($liste=$rep->fetch())
            {
                
                echo '<a href="listeetab.php?id='.$liste['id_domaine'].'">'.$liste['domaine'].'</a>';
                echo '<br>';
            }
        }
    }

        
?>

    
</fieldset>
    

</div>


</div>
<p class="pied">“La rétention de l'information est une forme de constipation du savoir.”</p>




</body>
</html>