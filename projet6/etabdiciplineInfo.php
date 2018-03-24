
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


<div id="bandeau">

<div id="connect">
<fieldset>
<legend align="center"><b>Espace publicitaire</b></legend>
<img src="images/logo.png" alt= "log " />
</fieldset><br>


</div>
<div id="desc">
<table class="table" border="1">
<tr><td style="background-color:#1F3C57;">discipline d'enseignement</td></td></tr>
<?php

if(!empty($_GET['id']))
{
    $id=$_GET['id'];
  
}
 $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
$req="select distinct discipline from domaine,appartient,discipline where appartient.id_discipline=discipline.id_discipline and appartient.id_domaine='".$id."'";
            $rep = $bdd->query($req); 
            while($liste=$rep->fetch())
            {
               echo'<tr>';
                echo "<td>".$liste['discipline']."</td>";
                
                echo '<br>';
                echo'</tr>';
            }
    
    
?>
       </table><br>
   
</div>

<a class="paa" href="user.php">Espace personnel</a>
</div>
<p class="pied">“La rétention de l'information est une forme de constipation du savoir.”</p>

</body>
</html>