<?php include("include/header.tpl"); ?>

<form role="form" action="signup.php" method="post">
	<table>
		<tr>
			<td>Nom <input type="text" name="nom" required value="<?= @$nom ?>"/></td>
		</tr>
		<tr>
			<td>Prénom <input type="text" name="prenom" required value="<?= @$prenom ?>"/></td>
		</tr>
		<tr>
			<td>Email <input type="email" name="mail" required value="<?= @$mail ?>"/></td>
		</tr>
		<tr>
			<td>Téléphone <input type="text" name="tel" required value="<?= @$tel ?>"/></td>
		</tr>
		<tr>
			<td><input type="submit" value="Enregistrer" name="submit"/></td>
		</tr>	
	</table>
</form>

<a href="index.php">HOME</a>

<?php include("include/footer.tpl"); ?>