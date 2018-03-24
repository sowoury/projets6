<?php
if(!empty($_POST))
{
   $id_discipline= $_POST['id_discipline'];
    $discipline= $_POST['discipline'];
$db=new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
        $resulta=$db->prepare(" INSERT into discipline (id_discipline,discipline) values(?,?)");
        $resulta->execute(array($id_discipline,$discipline));
        
        //$_SESSION['var']=$discipline;
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
<form action="discipline.php" method="POST" autocomplete="off">
<table border="0">
<tr>
      <th>Identifiant:</th><th><input type="text" name="id_discipline"  size="60"/></th>
 </tr>
 <tr>
      <th>Discipline:</th><th><input type="text" name="discipline"  size="60" /></th>
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