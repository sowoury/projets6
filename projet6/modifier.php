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
    $nom=$_POST['n'];
    $prenom=$_POST['p'];
    $phone=$_POST['e'];
    $adresse=$_POST['m'];
    
    $oury=true;
    if(empty($nom) || empty($prenom) || empty($phone) || empty($adresse) )
    {
      $messageErr="tous les champs sont obligatoire merci.";
        $oury=false;
    }
    if($mdp!=$mdpc)
    {
      $messageErr="les mots de passe sont differents.";
        $oury=false;
    }
    if($oury)
    {
       $id=$_SESSION['var'];
       $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
       $rep = $bdd->prepare(" update etudiant SET nom =?,prenom = ?,phone = ?,adresse = ?
                  where id_etudiant=? ");
        $rep->execute(array($nom,$prenom,$phone,$adresse,$id));
        echo var_dump($rep);
        header("location:supprimerU.php");
    
    }
  }else
  {
      $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
      $rep = $bdd->query('select nom,prenom,phone,adresse from etudiant where id_etudiant="'.$id.'"');
      $liste=$rep->fetch();
      $nom=$liste['nom'];
      $prenom=$liste['prenom'];
      $phone=$liste['phone'];
      $adresse=$liste['adresse'];
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
<div id="entete">



</div>
<div id="bandeau">
<div id="po">
<fieldset>
<legend align="center"><b>Entrez vos informations</b></legend>
<form action="modifier.php" method="POST" autocomplete="off">
<table border="0">
<tr>
      <th>Nom:</th><th><input type="text" name="n"  size="60" value="<?php echo $nom  ?>"/></th>
 </tr>
 <tr>
      <th>Prenom:</th><th><input type="text" name="p"  size="60" value="<?php echo $prenom  ?>"/></th>
 </tr>
 
 
 <tr>
      <th>Telephone:</th><th><input type="text" name="e"  size="60" value="<?php echo $phone  ?>"/></th>
 </tr>
 <tr>
     <th>Adresse :</th><th><input type="text" name="m"  size="60" value="<?php echo $adresse ?>"/></th>
 </tr>

 <tr >
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