<?php
// Création du token unique
$token = uniqid(rand(), true);
$date_creation_token = time();

// Création du cookie contenant le token
setcookie('token', $token, 0, null, null, false, true);
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
				
		<!-- Association du fichier CSS Bootstrap -->
		<link rel="stylesheet" type="text/css" href="Ressources/css/bootstrap.min.css" />

		<!-- Association du fichier CSS Jumbotron spécifique au thème utilisé -->
		<link href="Ressources/css/jumbotron.css" rel="stylesheet">

	</head>

	<body>

		<!-- Création de la tête de page (adapté du thème jumbotron de Bootstrap) contenant le formulaire de connexion -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
		  <div class="container">
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
			  <a class="navbar-brand" href="#" title="Revenir en haut de la page">AG7 - Gestion des Stocks</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
			  <form class="navbar-form navbar-right" method="post" action="connexion.php" >
				<div class="form-group">
				  <input type="text" id="ID" name="Log_Abo" placeholder="Identifiant" class="form-control">
				</div>
				<div class="form-group">
				  <input type="password" id="MDP" name="MDP_Abo" placeholder="Mot de passe" class="form-control">
				</div>
				
				<!-- Association du token avec le formulaire -->
				<input type="hidden" name="Token_Abo" value="<?php echo $token; ?>" />
				<input type="hidden" name="Date_Token_Abo" value="<?php echo $date_creation_token; ?>" />

				<button type="submit" class="btn btn-success">Connexion</button>
			  </form>
			</div><!--/.navbar-collapse -->
		  </div>
		</nav>

		<!-- Message d'accueil de la page-->
		<div class="jumbotron">
		  <div class="container">
			<h1>Bienvenue sur AG7 Gestion Stock !</h1>
			<p>Merci de vous connecter pour accéder au site (sur mobile, utilisez le bouton du menu en haut à droite). <br />
			Pour obtenir vos identifiants, veuillez contacter l'administrateur du site.</p>
		  </div>
		</div>

		<!-- Création du pied de page -->
		<div class="container">
			<footer class="footer">
				<hr>
				<div class="W3CValidation">
					<a href="https://validator.w3.org/" target="_blank"><img src="Ressources/fonts/W3CValidation.png" title="HTML et CSS Valides !" alt="HTML et CSS Valides !" /></a>	
				</div>
				<a href="http://achat-groupe-direct.fr/index.php" target="_blank"><img src="Ressources/fonts/achat-groupe-direct.jpg" title="Boutique Achat Groupé Direct" alt="Boutique Achat Groupé Direct" /></a><br />
				&copy; Site créé par Dylan LEVY - 2015<br />
			</footer>
		</div> <!-- /container -->
	
		<!-- CHARGEMENT DES SCRIPTS -->
		<!-- Script jQuery -->
		<script type="text/javascript" src="Ressources/js/jquery-2.1.4.min.js"></script>

		<!-- Script Bootstrap -->
		<script type="text/javascript" src="Ressources/js/bootstrap.min.js"></script>

		<!-- Script des erreurs (exclu IE) -->
		<script src="Ressources/js/ie-emulation-modes-warning.js"></script>
		
		<!-- Script de test -->
		<script src="Ressources/js/test.js"></script>
	</body>
</html>