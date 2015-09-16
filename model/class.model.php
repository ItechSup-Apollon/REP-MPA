<?php

class Model 
{
	private static $user = "root";
	private static $pass = "root";
	private static $db = "repertoire";

	protected static $connexion = false; // ASSURER que la connexion à la base de donnée soit par défaut fausse

	//constructeur pour récuperer les données de notre base située dans $host
	function __construct() 
	{
		if (!self::$connexion) {
			self::$connexion = new PDO('mysql:host=localhost;dbname='.self::$db.';charset=utf8', self::$user, self::$pass, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
		}
	}
}
?>