

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
    $id_domaine=$_POST['n'];
    $domaine=$_POST['p'];
   
    $oury=true;
    if(empty($id_domaine) || empty($domaine) )
    {
      $messageErr="tous les champs sont obligatoire merci.";
        $oury=false;
    }
    
    if($oury)
    {
       $id=$_SESSION['var'];
       $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
       $rep = $bdd->prepare(" update domaine SET id_domaine =?,domaine = ?
                  where id_domaine=? ");
        $rep->execute(array($id_domaine,$domaine,$id));
        
        header("location:infosDom.php");
    
    }
  }else
  {
    
      $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
      $rep = $bdd->query('select id_domaine,domaine from domaine where id_domaine="'.$id.'"');
      $liste=$rep->fetch();
      $id_domaine=$liste['id_domaine'];
      $domaine=$liste['domaine'];
      
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
<form action="modifierDom.php" method="POST" autocomplete="off">
<table border="0">
<tr>
      <th>Identifiant:</th><th><input type="text" name="n"  size="60" value="<?php echo $id_domaine  ?>"/></th>
 </tr>
 <tr>
      <th>Domaine:</th><th><input type="text" name="p"  size="60" value="<?php echo $domaine ?>"/></th>
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