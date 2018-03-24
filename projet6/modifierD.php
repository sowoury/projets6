

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
    $id_discipline=$_POST['n'];
    $discipline=$_POST['p'];
   
    $oury=true;
    if(empty($id_discipline) || empty($discipline) )
    {
      $messageErr="tous les champs sont obligatoire merci.";
        $oury=false;
    }
    
    if($oury)
    {
       $id=$_SESSION['var'];
       $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
       $rep = $bdd->prepare(" update discipline SET id_discipline =?,discipline = ?
                  where id_discipline=? ");
        $rep->execute(array($id_discipline,$discipline,$id));
        
        header("location:infoGradiscip.php");
    
    }
  }else
  {
      $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
      $rep = $bdd->query('select id_discipline,discipline from discipline where id_discipline="'.$id.'"');
      $liste=$rep->fetch();
      $id_discipline=$liste['id_discipline'];
      $discipline=$liste['discipline'];
      
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
<form action="modifierD.php" method="POST" autocomplete="off">
<table border="0">
<tr>
      <th>Identifiant:</th><th><input type="text" name="n"  size="60" value="<?php echo $id_discipline  ?>"/></th>
 </tr>
 <tr>
      <th>Discipline:</th><th><input type="text" name="p"  size="60" value="<?php echo $discipline  ?>"/></th>
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