<?php include("include/header.tpl"); ?>

<form action="find.php" method="post">
	<input type="text" name="requete" placeholder="Rechercher...">
	<input type="submit">
</form>

<form>
	<table>
		<tr>
			<td><a href="signup.php">Enregistrer nouveau contact</a></td>
			<td><a href="users.php">Liste des contacts enregistrés</a></td>
		</tr>
	</table>
</form>
		

<?php include("include/footer.tpl"); ?>