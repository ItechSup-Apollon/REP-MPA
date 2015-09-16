<?php include('include/header.tpl');
	if (empty($nb_resultats))
	    {
			echo '<h3>Pas de résultats</h3>';
			echo '<p>Nous n\'avons trouvé aucun résultat pour votre requête "'. $_POST['requete'] . '".</p>';
	    }else{
			echo '<h3>Résultats de votre recherche.</h3>';
			echo '<p>Nous avons trouvé '. count($nb_resultats);
			if($nb_resultats > 1 ){ 
				echo ' résultat(s) '; 
			}else{
	    		echo ' résultat '; 
			}  
			echo 'dans notre base de données. Voici les contacts trouvées :<br/>';
			echo '<br/>';

			foreach($nb_resultats as $value): 
				echo $value['nom'].' ' . $value['prenom'] . '</a><br/>';
			endforeach; 
	    }
?>
<a href="index.php">HOME</a>	    