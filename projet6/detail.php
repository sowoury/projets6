<?php
 session_start();

$db=new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
         $resu=$db->query("select nom,prenom,phone,adresse,mot_passe from etudiant ");
         while($ligne=$resu->fetch())
         {
             $nom=$ligne['nom'];
             $prenom=$ligne['prenom'];
             $phone=$ligne['phone'];
             $adresse=$ligne['adresse'];
             $password=$ligne['mot_passe'];
             $mdpc=$ligne['mot_passe'];
         }
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
  <li><a href="deconnexion.php" >Deconnexion</a></li>
</ul>

<div id="bandeau">

<div id="connect">
<fieldset>
<legend align="center"><b>Espace prive</b></legend>
<img src="images/logo.png" alt= "log " />
</fieldset><br>

</div>
<div id="desc">
<div id="etab"><h3>Profil</h3>
    
    
    
    
    
    
    <?php

//$nom=$prenom=$phone=$adresse=$email=$password=$mdpc=$image="";
$nomErr=$prenomErr=$phoneErr=$adresseErr=$passwordErr=$mdpcErr=$imageErr="";
//$suces=false;

if(!empty($_POST))
{
    $nom=securite($_POST["nom"]);
    $prenom=securite($_POST["prenom"]);
    $phone=securite($_POST["phone"]);
    $adresse=securite($_POST["adresse"]);
    //$email=securite($_POST["email"]);
    $password=securite($_POST["mdp"]);
    $mdpc=securite($_POST["mdcp"]);
    
    //$image=securite($_FILES["image"]["name"]);
    //$imagePath='images/'.basename($image);
    //$imageExtension=pathinfo($imagePath,PATHINFO_EXTENSION);
    
    $isUpload=false;
    $suces=true;
    
    if(empty($nom))
    {
        $nomErr="Veuillez saisir votre nom s'il vous plait !";
        $suces=false;
    }
     if(empty($prenom))
    {
        $prenomErr="Veuillez saisir votre prenom s'il vous plait !";
         $suces=false;
    }
    
    if(!isPhone($phone))
    {
        $phoneErr="Veuillez saisir des chiffres s'il vous plait !";
        $suces=false;
    }
     
    
    if(empty($adresse))
    {
        $adresseErr="Veuillez saisir votre adresse s'il vous plait !";
        $suces=false;
    }
    
     if(empty($password))
    {
        $passwordErr="Veuillez saisir votre mot de passe s'il vous plait !";
         $suces=false;
    }
    if(empty($mdpc))
    {
        $passwordErr="Veuillez confirmer le mot de pass s'il vous plait !";
        $suces=false;
    }   
    else
     {
       if($mdpc!=$password)
       {
          $passwordErr="Le mot de pass sont differents merci de reessayer !";
          $suces=false; 
       }
     }

    /* ----------------------------------xa commence ici la base de donnee---------------------------------*/
    
    if($suces)
    {
         session_start();
           $id=$_SESSION['etudiant'][4];
        $db=new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
        $resulta=$db->prepare(" update etudiant set nom=?,prenom=?,phone=?,adresse=?,mot_passe=? where id_etudiant='".$id."'");
        $resulta->execute(array($nom,$prenom,$phone,$adresse,$password));
        
        
    
        header("location: user.php");
       
    
    }
     /* ----------------------------------xa fini ici la base de donnee---------------------------------*/
        
    

    
    
    
}
function isPhone($var)
{
    return preg_match("/^[0-9 ]*$/",$var);
}


function securite($var)
{
    $var=htmlspecialchars($var);
    $var=stripslashes($var);
    $var=trim($var);
    return $var;
}





?>




<form action="detail.php" method="POST" autocomplete="off">
<table border="0">
<tr>
      <th>Nom:</th><th><input type="text" name="nom"  value="<?php echo $nom;?>"/></th>
    <th><?php echo $nomErr; ?></th>
    
 </tr>
 <tr>
      <th>Prenom:</th><th><input type="text" name="prenom"   value="<?php echo $prenom;?>"/></th>
     <th><?php echo $prenomErr; ?></th>
 </tr>
 <tr>
      <th>Telephone:</th><th><input type="text" name="phone"   value="<?php echo $phone;?>"/></th>
     <th><?php echo $phoneErr; ?></th>
 </tr>
 <tr>
      <th>Adresse:</th><th><input type="text" name="adresse"   value="<?php echo $adresse;?>"/></th>
     <th><?php echo $adresseErr; ?></th>
 </tr>
 
 <tr>
     <th>Password :</th><th><input type="password" name="mdp"   value="<?php echo $password;?>"/></th>
     <th><?php echo $passwordErr; ?></th>
 </tr>
 <tr>
 <th>Confirmer Password :</th><th><input type="password" name="mdcp"   value="<?php echo $mdpc;?>"/></th>
 </th>
   

     <th><input type="submit" value="Modifier" /></th>
 </tr><br/>
 
</table>
</form>

</fieldset>







    
    
    
    
    
    
    
    
    

</div>
       </table>
<div id="doma"><h3>Inscription</h3>
   <table border="1">
       <tr>
       <td style="background-color:#1F3C57;">etablissement</td>
       <td style="background-color:#1F3C57;">domaine</td>
       <td style="background-color:#1F3C57;">action</td>
       </tr>
        <?php
 $id=$_SESSION['etudiant'][4];
$bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
$req="select id_ins,etablissement,domaine from inscription,etablissement,domaine 
where inscription.id_etablissement=etablissement.id_etablissement and inscription.id_domaine=domaine.id_domaine
and inscription.id_etudiant='".$id."'
";
            $rep = $bdd->query($req); 
            while($liste=$rep->fetch())
            {
              echo"<tr>";
                echo "<td>".$liste['etablissement']."</td>";
                echo "<td>".$liste['domaine']."</td>";
                echo '<td><a href="sup.php?id='.$liste['id_ins'].'">supprimer</a></td>';
                echo'</tr>';
            }
    
    
?>
    </table>

</div>

</div>


</div>
<p class="pied">“La rétention de l'information est une forme de constipation du savoir.”</p>

</body>
</html>