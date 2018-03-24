

<?php
$messageErr="";
session_start();
if(!empty($_GET['id']))
   {
      $id=$_GET['id'];
      $_SESSION['var']=$_GET['id'];

  }
  $oury=false;
  if(!empty($_POST))
  {
    $etablissement=$_POST['n'];
    $adresse=$_POST['p'];
     $telephone=$_POST['t'];
   
    $oury=true;
    if(empty($etablissement) || empty($adresse) || empty($telephone)  )
    {
      $messageErr="tous les champs sont obligatoire merci.";
        $oury=false;
    }
    
    if($oury)
    {
       $id=$_SESSION['var'];
       $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
       $rep = $bdd->prepare(" update etablissement SET etablissement =?,adresse = ?,telephone = ?
                  where id_etablissement=? ");
        $rep->execute(array($etablissement,$adresse,$telephone,$id));
        
        header("location:infoetab.php");
    
    }
  }else
  {
    
      $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
      $rep = $bdd->query('select etablissement,adresse,telephone from etablissement where id_etablissement="'.$id.'"');
      $liste=$rep->fetch();
      $etablissement=$liste['etablissement'];
      $adresse=$liste['adresse'];
      $telephone=$liste['telephone'];
      
  }
    

   


  
?>

<!DOCTYPE HTML>
<HTML>
<!DOCTYPE HTML>
<HTML>
<HEAD>
<TITLE></TITLE>
<link rel="stylesheet"    href="stylecss/mon.css"    type="text/css"    media="screen"    /> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</HEAD>
<body>
<div id="entete"><p class="titre" >Bien venus sur notre plate-forme </p>



</div>
<div id="bandeau">
<div id="po">
<fieldset>
<legend align="center"><b>Entrez vos informations</b></legend>
<form action="modifieretab.php" method="POST" autocomplete="off">
<table border="0">
<tr>
      <th>NOM:</th><th><input type="text" name="n"  size="60" value="<?php echo $etablissement  ?>"/></th>
 </tr>
 <tr>
      <th>Adresse:</th><th><input type="text" name="p"  size="60" value="<?php echo $adresse ?>"/></th>
 </tr>
 <tr>
      <th>Telephone:</th><th><input type="text" name="t"  size="60" value="<?php echo $telephone ?>"/></th>
 </tr>

     <th><input type="submit" value="Valider" /></th>
 </tr><br/>
 <p><?php echo $messageErr  ?></p>
</table>
</form>

</fieldset>

</div>


</div>
<p class="pied">“La rétention de l'information est une forme de constipation du savoir.”</p>

</body>
</html>