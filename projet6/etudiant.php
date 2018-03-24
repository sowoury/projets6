<?php

$nom=$prenom=$phone=$adresse=$email=$password=$mdpc=$image="";
$nomErr=$prenomErr=$phoneErr=$adresseErr=$emailErr=$passwordErr=$mdpcErr=$imageErr="";
$suces=false;

if(!empty($_POST))
{
    $nom=securite($_POST["nom"]);
    $prenom=securite($_POST["prenom"]);
    $phone=securite($_POST["phone"]);
    $adresse=securite($_POST["adresse"]);
    $email=securite($_POST["email"]);
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
     if(!isEmail($email))
    {
        $emailErr="Veuillez saisir votre email s'il vous plait !";
         $suces=false;
    }else
     {
         
         $db=new PDO('mysql:host=localhost;dbname=monbd;charset=utf8', 'root', '');
         $resu=$db->query("select email from etudiant ");
         while($ligne=$resu->fetch())
         {
             $test=$ligne['email'];
             if($test==$email)
             {
                 $emailErr="Ce nom utilisateur existe deja !";
                 $suces=false;   
             }
         }
       
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
        $db=new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
        $resulta=$db->prepare(" INSERT into etudiant (id_etudiant,nom,prenom,phone,adresse,email,mot_passe) values(?,?,?,?,?,?,?)");
        $resulta->execute(array(null,$nom,$prenom,$phone,$adresse,$email,$password));
        
        $_SESSION['var']=$prenom;
    
        header("location: index.php");
       
    
    }
     /* ----------------------------------xa fini ici la base de donnee---------------------------------*/
        
    

    
    
    
}
function isPhone($var)
{
    return preg_match("/^[0-9 ]*$/",$var);
}
function isEmail($var)
{
    return filter_var($var,FILTER_VALIDATE_EMAIL);
}

function securite($var)
{
    $var=htmlspecialchars($var);
    $var=stripslashes($var);
    $var=trim($var);
    return $var;
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
<form action="etudiant.php" method="POST" autocomplete="off">
<table border="0">
<tr>
      <th>Nom:</th><th><input type="text" name="nom"  size="60" value="<?php echo $nom;?>"/></th>
    <th><?php echo $nomErr; ?></th>
    
 </tr>
 <tr>
      <th>Prenom:</th><th><input type="text" name="prenom"  size="60" value="<?php echo $prenom;?>"/></th>
     <th><?php echo $prenomErr; ?></th>
 </tr>
 <tr>
      <th>Telephone:</th><th><input type="text" name="phone"  size="60" value="<?php echo $phone;?>"/></th>
     <th><?php echo $phoneErr; ?></th>
 </tr>
 <tr>
      <th>Adresse:</th><th><input type="text" name="adresse"  size="60" value="<?php echo $adresse;?>"/></th>
     <th><?php echo $adresseErr; ?></th>
 </tr>
 <tr>
      <th>Email:</th><th><input type="text" name="email"  size="60" value="<?php echo $email;?>"/></th>
     <th><?php echo $emailErr; ?></th>
 </tr>
 <tr>
     <th>Password :</th><th><input type="password" name="mdp"  size="60" value="<?php echo $password;?>"/></th>
     <th><?php echo $passwordErr; ?></th>
 </tr>
 <tr>
 <th>Confirmer Password :</th><th><input type="password" name="mdcp"  size="60" value="<?php echo $mdpc;?>"/></th>
 </th>
   
   <tr>
       <!--
 <th>Photo :</th><th><input type="file" id="image" name="photo"  value="<?php echo $image;?>"/></th>
       <th><?php echo $imageErr; ?></th>
 </th>  -->
 <tr >
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