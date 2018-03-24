<?php
if(!empty($_POST))
{
   $id_domaine= $_POST['id_domaine'];
    $domaine= $_POST['domaine'];
$db=new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
        $resulta=$db->prepare(" INSERT into domaine (id_domaine,domaine) values(?,?)");
        $resulta->execute(array($id_domaine,$domaine));
        
       
        header("location: admin.php");
}
?>

<!DOCTYPE HTML>
<HTML>
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
<div id="po">
<fieldset>
<legend align="center"><b>Entrez vos informations</b></legend>
<form action="domaine.php" method="POST" autocomplete="off">
<table border="0">
<tr>
      <th>Identifiant:</th><th><input type="text" name="id_domaine"  size="60"/></th>
 </tr>
 <tr>
      <th>Domaine:</th><th><input type="text" name="domaine"  size="60"/></th>
 </tr>


     <th><input type="submit" value="Valider" /></th>
 </tr><br/>
 
</table>
</form>

</fieldset>

</div>


</div>
<p class="pied">“La rétention de l'information est une forme de constipation du savoir.”</p>

</body>
</html>