<?php 
include("../helpers/controller.php");
include("../model/class.users.php");

try {
	$m = new Utilisateurs();
} catch (PDOException $e) {
	error($e->getMessage());
}

//print_r($m);

if (isset($_POST['submit'])) {

	$nom = $_POST["nom"];
	$prenom = $_POST["prenom"];
	$mail = $_POST["mail"];
	$tel = $_POST["tel"];

//print_r($_POST);

	$result=$m->add($nom, $prenom, $mail, $tel);
}


include("../view/signup.tpl");

?>