<?php
$nom=$prenom=$phone=$email=$message="";
$nomErr=$prenomErr=$phoneErr=$emailErr=$messageErr="";
$valide=false;

$emailTo="dalab1994@gmail.com";

if($_SERVER['REQUEST_METHOD']=="POST")
{
    $nom=verify($_POST["nom"]);
    $prenom=verify($_POST["prenom"]);
    $phone=verify($_POST["phone"]);
    $email=verify($_POST["email"]);
    $message=verify($_POST["message"]);
    $textemail="";
    $valide=true;

    if(empty($nom))
    {
      $nomErr="Veuillez saisir un nom s'il vous plait !" ;
        $valide=false;
    }else
    {
        $textemail.="Nom: $nom";
    }
    
    if(empty($prenom))
    {
      $prenomErr="Veuillez saisir un prenom s'il vous plait !" ;  
        $valide=false;
    }else
    {
        $textemail.="Prenom: $prenom";
    }
    
    if(empty($message))
    {
      $messageErr="Veuillez saisir un message s'il vous plait !" ; 
        $valide=false;
    }else
    {
        $textemail.="Message: $message";
    }
    
   if(!isPhone($phone))
    {
       $phoneErr="Que des chiffres et spaces"; 
       $valide=false;
    }else
   {
       $textemail.="Telephone: $phone";
   }
    
    if(!isMail($email))
    {
        $emailErr="Veuillez saisir un email s'il vous plait !";
        $valide=false;
    }else
    {
        $textemail.="Email: $email";
    }
    
    if($valide)
    {
        $headers="From: $nom $prenom <email>\r\nReply-To:$email";
        mail($emailTo,"Messagerie",$textemail,$headers);
        $nom=$prenom=$phone=$email=$message="";
    }
    
}
/*-----------------------Creation des fonctions--------------------------*/
     function isPhone($var)
     {
        return preg_match("/^[0-9 ]*$/",$var);
     }
     function isMail($var)
     {
        return filter_var($var, FILTER_VALIDATE_EMAIL);
     
     }
        function verify($var)
         {
             $var=trim($var);
             $var=stripslashes($var);
             $var=htmlspecialchars($var);
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
<ul id="navigation">
  <li><a href="index.php" >Acceuil</a></li>
  <li><a href="etablissementconnecte.php" >Etablissement</a></li>
  <li><a href="domaineconecte.php" >Domaine</a></li>
  <li><a href="disciplineconecte.php" >Discipline</a></li>
  <li><a href="contacts.php" >Contact</a></li>
  <li><a href="deconnexion.php" >Deconnexion</a></li>
</ul>

<div id="bandeau">
  
<div id="po">
    <fieldset>
<legend align="center"><b>Contactee-Nous</b></legend>

<table border="0">
        <div class="formulaire">
                
                <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" class="conta">
                    
                    <div>
                        <label for="nom">Nom:<span class="etoile">*</span></label>
                        <input type="text" name="nom" placeholder="votre nom" value="<?php echo $nom ?>">
                        <p class="MsgeErr"><?php echo $nomErr ?></p>
                    </div>
                    <div>
                          <label for="prenom">Prenom:<span class="etoile">*</span></label>
                         <input type="text" name="prenom" placeholder="votre prenom" value="<?php echo $prenom ?>">
                        <p class="MsgeErr"><?php echo $prenomErr ?></p>
                    </div>
                    <div>
                         <label for="phone">Telephone:</label>
                        <input type="text" name="phone" placeholder="votre telephone" value="<?php echo $phone ?>">
                        <p class="MsgeErr"><?php echo $phoneErr ?></p>
                    </div>
                    <div>
                        <label for="email">Email:<span class="etoile">*</span></label>
                        <input type="text" name="email" placeholder="votre email" value="<?php echo $email ?>">
                        <p class="MsgeErr"><?php echo $emailErr?></p>
                    </div>
                    <div>
                        <label for="message"> Message:<span class="etoile">*</span></label>
                       <textarea id="message" name="message"><?php echo $message ?></textarea>
                        <p class="MsgeErr"><?php echo $messageErr ?></p>
                    </div>
                    <div></div>
                    <input type="submit" value="Valider" class="boutton">
                    <p class="Msgeenvoi" style="display:<?php if($valide) echo "block";else echo "none";   ?>">Votre message a été bien envoyé merci !</p>
                </form>
        </div>
        
         <div class="espace"></div>
        
         </table>


</fieldset>

  </div>


</div>
<p class="pied">“La rétention de l'information est une forme de constipation du savoir.”</p>

</body>
</html>>