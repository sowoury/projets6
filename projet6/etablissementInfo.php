
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
<tr><td style="background-color:#1F3C57;">domaine d'enseignement</td></td>
    <td style="background-color:#1F3C57;">voir</td>
    <td style="background-color:#1F3C57;">choisir</td>
    </tr>
<?php
session_start();
if(!empty($_GET['id']))
{
    $id=$_GET['id'];
   $_SESSION['eta']=$id;
   
}
 $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
$req="select distinct domaine.id_domaine,domaine from etablissement,enseignement,domaine where enseignement.id_domaine=domaine.id_domaine and enseignement.id_etablissement='".$id."'";
            $rep = $bdd->query($req); 
            while($liste=$rep->fetch())
            {
              echo'<tr>';
                echo '<td>'.$liste['domaine'].'</td>';
                echo '<td><a href="etabdiciplineInfo.php?id='.$liste['id_domaine'].'">voir discipline</a>';
                echo '</td>';
                echo '<td>';
                echo '<a href="choisirPareta.php?id='.$liste['id_domaine'].'">choisir</a>';
                
                echo '</td>';
                echo'</tr>';
            }
    
    
?>
    </table>
</div>
<a class="paa" href="user.php">Espace personnel</a>

</div>
<p class="pied">“La rétention de l'information est une forme de constipation du savoir.”</p>

</body>
</html>