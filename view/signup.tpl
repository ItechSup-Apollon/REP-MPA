<?php include("include/header.tpl"); ?>

<h1>Enregistrer un nouveau contact</h1>

<div class="row">
	<div class="col-md-4">
		<form role="form" action="signup.php" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">Nom</label>
				<input type="text" class="form-control" name="nom" required value="<?= @$nom ?>"/>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Prénom</label>
				<input type="text" class="form-control" name="prenom" required value="<?= @$prenom ?>"/>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Email</label>
				<input type="email" class="form-control" name="mail" required value="<?= @$mail ?>"/>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Téléphone</label>
				<input type="text" class="form-control" name="tel" required value="<?= @$tel ?>"/>
			</div>
				<button type="submit" class="btn btn-default" name="submit">Valider</button>
		</form>
	</div>
</div>

<?php include("include/footer.tpl"); ?>