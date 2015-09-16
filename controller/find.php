<?php 
include("../helpers/controller.php");
include("../model/class.users.php");

	if(isset($_POST['requete']) && $_POST['requete'] != NULL){ //on vérifie d'abord l'existence du POST et aussi si la requete n'est pas vide.
	
		try{
			$m = new Utilisateurs();
		}
			catch(PDOException $e){
				error($e->getMessage());
		}

		//print_r($_POST['requete']);
		//print_r($m);
		$nb_resultats=$m->search($_POST['requete']);
		//print_r($nb_resultats);  
	}

include("../view/find.tpl");
?>
	
