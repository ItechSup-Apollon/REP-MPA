<?php include("include/header.tpl"); ?>


<table>
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

<a href="index.php">HOME</a>

<?php include("include/footer.tpl"); ?>