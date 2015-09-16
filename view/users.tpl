<?php include("include/header.tpl"); ?>

<h3>Nous avons un portefeuille de <?php echo count($table); ?> contacts</h3>

<table class="table table-striped">
	<tr>
		<th>Nom</th>
		<th>Prenom</th>
		<th>Email</th>
		<th>Telephone</th>	
	</tr>

	<?php foreach ($table as $user): ?>
	<tr>
		<td><?= $user["nom"]?></td>
		<td><?= $user["prenom"]?></td>
		<td><?= $user["email"]?></td>
		<td><?= $user["telephone"]?></td>
	</tr>		
	<?php endforeach;?>
</table>

<?php include("include/footer.tpl"); ?>