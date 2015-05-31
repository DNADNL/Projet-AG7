<?php 

// Connexion à la Base de Données
try
{
	$bd = new PDO('mysql:host=mysql.hostinger.fr;dbname=***;charset=utf8','***','***');
}
catch (Exception $e)
{
    die('Erreur : ' . $e->getMessage());
}



// Récupération et Hachage du mot de passe
$pass_hache = sha1($_POST['MDP_Abo']);

// Récupération du Pseudo 
$pseudo = $_POST['Log_Abo'];

// Récupération du token
$token = $_POST['Token_Abo'];
$date_creation_token = $_POST['Date_Token_Abo'];

// Création de variable pour vérifier l'expiration du token (ce dernier durera 5 minutes)
$date_expiration_token = $date_creation_token + (5*60);

// Récupération de la liste des identifiants
$req = $bd->query('SELECT * FROM Abonne');
$trouve = false;

if (	
		(isset($token)) 						// Le token existe (non NULL)
		AND (isset($date_creation_token)) 		// La date de création du token existe (non NULL)
		AND (isset($pseudo)) 					// Le pseudo existe (non NULL)
		AND (isset($pass_hache)) 				// Le mot de passe existe (non NULL)
		AND ($_COOKIE['token'] == $token)		// Le token n'a pas été modifié
		AND (time() <= $date_expiration_token)	// Le token n'a pas encore expiré
	)
{
	while (($donnees = $req->fetch()) AND !$trouve) // Tant qu'il y a des éléments dans la requête et qu'on a pas trouvé le bon couple pseudo/MDP
	{
		if (($donnees['Login_Abonne']==$pseudo) AND ($donnees['Mot_de_passe_Abonne']==$pass_hache))
		{
			$trouve = true; //On passe $trouve à vrai car on a (enfin) trouvé le couple login/MDP correspondant
		}
	}
	
	$req->closeCursor();
	if ($trouve)
	{
		// Création du cookie contenant le pseudo
		setcookie('identifiant', $pseudo, 0, null, null, false, true);
		$bd->query("	UPDATE Abonne
						SET Token_Abonne = '".$token."'
						WHERE Login_Abonne = '".$pseudo."'");

		header("Location: produits.php?Ref_Prod=ag7&A_appuye_Ref_Prod=TRUE");
		exit();		
	}
	else
	{
?>
	<!DOCTYPE html>
	<html lang="fr-FR">
		<head>

			<!-- La page sera codée en UTF-8 -->
			<meta charset="utf-8" />
			
			<!-- Utilisation de la dernière methode de rendu (exclusif à IE) -->
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			
			<!-- Pour assurer le côté responsive design du site -->
			<meta name="viewport" content="width=device-width, initial-scale=1">

			<!-- Titre de la page (affiché dans l'onglet du navigateur) -->
			<title>AG7 - Gestion des Stocks</title>
			
			<!-- Mise en place du favicon -->
			<link rel="icon" href="Ressources/fonts/favicon.png">

		</head>
		
		<body>
			<!-- CHARGEMENT DES SCRIPTS -->
			<!-- Script jQuery -->
			<script type="text/javascript" src="Ressources/js/jquery-2.1.4.min.js"></script>

			<!-- Script des erreurs (exclu IE) -->
			<script src="Ressources/js/ie-emulation-modes-warning.js"></script>
			
			<!-- Script de test -->
			<script src="Ressources/js/test.js"></script>
			
			<span id="ID_ou_MDP_invalide"></span>
		</body>
	</html>
<?php
		header("Refresh:2 ; URL=index.php");
		exit();
	}
}
else
{
?>
	<!DOCTYPE html>
	<html lang="fr-FR">
		<head>

			<!-- La page sera codée en UTF-8 -->
			<meta charset="utf-8" />
			
			<!-- Utilisation de la dernière methode de rendu (exclusif à IE) -->
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			
			<!-- Pour assurer le côté responsive design du site -->
			<meta name="viewport" content="width=device-width, initial-scale=1">

			<!-- Titre de la page (affiché dans l'onglet du navigateur) -->
			<title>AG7 - Gestion des Stocks</title>
			
			<!-- Mise en place du favicon -->
			<link rel="icon" href="Ressources/fonts/favicon.png">

		</head>
		
		<body>
			<!-- CHARGEMENT DES SCRIPTS -->
			<!-- Script jQuery -->
			<script type="text/javascript" src="Ressources/js/jquery-2.1.4.min.js"></script>

			<!-- Script des erreurs (exclu IE) -->
			<script src="Ressources/js/ie-emulation-modes-warning.js"></script>
			
			<!-- Script de test -->
			<script src="Ressources/js/test.js"></script>

			<span id="Session_expiree"></span>
		</body>
	</html>
<?php
	header("Refresh:2 ; URL=index.php");
	exit();
}
?>