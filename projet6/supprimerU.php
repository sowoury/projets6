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
     <tr>
         <td>Nom</td>
          <td>Prenom</td>
          <td>Telephone</td>
         <td>Adresse</td>
          <td>Actions</td>
         <?php
            $bdd= new PDO('mysql:host=localhost;dbname=monbds;charset=utf8', 'root', '');
            $rep = $bdd->query('select id_etudiant,nom,prenom,phone,adresse from etudiant');
            while ($ligne = $rep ->fetch())
            {
                echo '<tr>';
                echo '<td>'.$ligne['nom'].'</td>';
                echo '<td>'.$ligne['prenom'].'</td>';
                echo '<td>'.$ligne['phone'].'</td>';
                echo '<td>'.$ligne['adresse'].'</td>';
                echo '<td><a href="delete.php? id='.$ligne['id_etudiant'].'">Delete</a>|
                        <a href="modifier.php? id='.$ligne['id_etudiant'].'">modifier</a>|
                       
                
                </td>';
                echo '</tr>';
            }
         ?>
          
         
     
     </tr>
     
 </table>
    
    <a class="paa" href="admin.php">Admin</a>
 </div>
</div>
<p class="pied">“La rétention de l'information est une forme de constipation du savoir.”</p>

</body>
</html>