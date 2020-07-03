<?php 
/*
--- AFFICHAGE CONDITIONNEL OU REDIRECTION EN FONCTION DU PRIVILEGE ---
	Config actuelle : le script gère un affichage conditionnel
	Pour rediriger l'utilisateur en fonction de son privilege, ajoutez les lignes suivantes aux endroits indiqués
	Dans la zone d'affichage admin : 
			header("Location:URL SI ADMIN")
	Dans la zone d'affichage admin : 
			header("Location:URL SI USER SIMPLE")
			
Note: pour ajouter des privilèges, editez ce fichier en rajoutant une condition d'affichage
et editez le fichier admin.php en ajoutant à la liste "select" un privilege.
*/
  
  
  // si l'utilisateur est connecté comme admin ...
  if($_SESSION['privilege'] == "hypervision") { // Affichage conditionnel : si et seulement si l'utilisateur est connecté avec le privilege administrateur ?>
<strong><u>En tant qu'administrateur vous pouvez effectuer les actions suivantes : </u></strong></p>
<p class="Style4">- <a href="hypervison.php">Hypervision</a>
  <?php } // fin de l'affichage conditionnel?>
</p>
<p>
  <?php 
  // si l'utilisateur est connecté comme simple utilisateur ...
  if($_SESSION['privilege'] == "manager") { // Affichage conditionnel : si et seulement si l'utilisateur est connecté avec le privilege utilisateur simple ?>
  <strong><u>En tant qu'utilisateur simple vous ne pouvez pas effectuer d'actions</u></strong>
  <p class="Style4">- <a href="manager.php">Manager</a>
<?php } // fin de l'affichage conditionnel?>
</p>
<p>
  <?php 
  // si l'utilisateur est connecté comme simple utilisateur ...
  if($_SESSION['privilege'] == "agent") { // Affichage conditionnel : si et seulement si l'utilisateur est connecté avec le privilege utilisateur simple ?>
  <strong><u>En tant qu'utilisateur simple vous ne pouvez pas effectuer d'actions</u></strong>
  <p class="Style4">- <a href="agent.php">Agent</a>
<?php } // fin de l'affichage conditionnel?>
</p>