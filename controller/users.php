<?php 
include("../helpers/controller.php");
include("../model/class.users.php");

 //Appel du model users
try {
	$m = new Utilisateurs();
} catch (PDOException $e) {
	error($e->getMessage());
}
//print_r($m);

// Récuperer toutes les valeurs de la table en question

$result = $m->sel();
//print_r($result);

$table = $result->fetchAll(PDO::FETCH_ASSOC);
//print_r($table);

include("../view/users.tpl");

?>