<?php include('include/header.tpl'); ?>

<?php if (empty($nb_resultats)):?>
	<h3>Pas de résultats</h3>

<?php else: ?>
	<h3>Résultats de votre recherche.</h3>
	<p>Nous avons trouvé <?php echo count($nb_resultats); ?>

		<?php if($nb_resultats > 1 ):?>
			résultat(s)
		<?php else: ?>
			résultat
		<?php endif ?> dans notre base de données. Voici les contacts trouvées : 
	</p>

	<table class="table table-striped">
		<tr>
			<th>Nom</th>
			<th>Prenom</th>
			<th>Email</th>
			<th>Telephone</th>	
		</tr>

		<?php foreach ($nb_resultats as $user): ?>
		<tr>
			<td><?= $user["nom"]?></td>
			<td><?= $user["prenom"]?></td>
			<td><?= $user["email"]?></td>
			<td><?= $user["telephone"]?></td>
		</tr>		
		<?php endforeach;?>

	</table>
<?php endif ?>



