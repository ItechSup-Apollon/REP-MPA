<?php
require_once("../model/class.model.php");


class Utilisateurs extends Model {
	// attributs de la classe 

protected $table = "users"; 

	function sel() {
	$query = parent::$connexion->query("SELECT * FROM users");
	return $query;
	}

	function add($nom, $prenom, $mail, $tel) {
	$query = parent::$connexion->prepare("INSERT INTO users (nom, prenom, email, telephone) VALUES (:nom, :prenom, :email, :telephone)");
	$query->bindParam(":nom", $nom);
	$query->bindParam(":prenom", $prenom);
	$query->bindParam(":email", $mail);
	$query->bindParam(":telephone", $tel);
	$query->execute();	

	return $query->rowCount() == 1 ? true : false;
	}

	function search($requete){
		$requete = htmlspecialchars($requete); //On crée une variable $requete pour faciliter l'écriture de la requête SQL, mais aussi pour empêcher les éventuels malins qui utiliseraient du PHP ou du JS, avec la fonction htmlspecialchars().
		$result = parent::$connexion->query("SELECT * FROM users WHERE prenom LIKE '%$requete%' OR nom LIKE '%$requete%'");
		$nb_resultats = $result->fetchAll(PDO::FETCH_ASSOC);
		return $nb_resultats; 
	}
}
?>