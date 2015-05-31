<?php

// DEBUT - GESTION DE L'AUTHENTIFICATION SUR LE SITE

// Connexion à la base de données
try
{
	$bd = new PDO('mysql:host=mysql.hostinger.fr;dbname=***;charset=utf8','***','***');
}
catch (Exception $e) // Si la connexion a échoué
{
	die('Erreur : ' . $e->getMessage());
}

// Récupération du pseudonyme
$pseudo = $_COOKIE['identifiant'];

// Récupération du token stocké chez l'utilisateur
$token_utilisateur = $_COOKIE['token'];

// Récupération du token stocké dans la base de données (grâce au pseudonyme)
$req = $bd->query("SELECT Token_Abonne 
						FROM Abonne
						WHERE Login_Abonne = '".$pseudo."'");

$token_BD = $req->fetch();
$req->closeCursor();

// Vérification de token (la page ne doit s'afficher que si le token de la base de données correspond à celui stocké chez l'utilisateur)
if ($token_BD['Token_Abonne'] == $token_utilisateur)
{

// FIN - GESTION DE L'AUTHENTIFICATION SUR LE SITE

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
				  <form class="navbar-form navbar-right" method="post" action="index.php" >
					<button id="formulaire_deconnexion" type="submit" class="btn btn-danger">Déconnexion</button>
				  </form>
				</div><!--/.navbar-collapse -->
			  </div>
			</nav>

			<div class="jumbotron">
				<div class="container">
<?php
					// Récupération des données entrées par l'utilisateur
					if(isset($_GET['Ref_Prod']) AND isset($_GET['A_appuye_Ref_Prod']) AND $_GET['A_appuye_Ref_Prod'] = "TRUE")
					{
						$ref = $_GET['Ref_Prod'];
					}
					
					if(isset($_GET['Type_Prod']) AND isset($_GET['A_appuye_Type_Prod']) AND $_GET['A_appuye_Type_Prod'] = "TRUE")
					{
						$type = $_GET['Type_Prod'];
					}
					
					// Correspondance $type/$libelle_type_Titre
					switch($type)
					{
						case '1': 
							$libelle_type_Titre = 'Ampoule';
							break;
							
						case '2':
							$libelle_type_Titre = 'Torche';
							break;
						
						case '3':
							$libelle_type_Titre = 'Projecteur';
							break;
						default:
							$libelle_type_Titre = '';
					}

					if(isset($_GET['Ref_Prod']) AND $_GET['Ref_Prod'] == '') // Si la personne ne spécifie pas de référence, on lui affiche tous les produits
					{
						$ref = 'ag7';
					}
					
					if($ref == 'ag7' OR $ref == 'AG7')
					{
?>
						<h1>Tous les produits</h1>
<?php
					}
					else if (isset($_GET['Ref_Prod']) OR isset($_GET['Type_Prod'])) // Si l'utilisateur est arrivé sans modifier l'URL (sans enlever les tags php de l'URL)
					{
?>
						<h1>Recherche : <?php echo $libelle_type_Titre; echo htmlspecialchars($ref); ?></h1>
<?php
					}
					else // L'utilisateur est arrivé en modifiant l'URL (en enlevant les tags php de l'URL)
					{
?>			
						<h1>Que souhaitez-vous faire ?</h1>
<?php
					}
?>
				</div>
			</div>

			<div class="container">
				<!-- Example row of columns -->
				<div class="row">
					<div class="col-md-6">
						<h2>Rechercher un produit par référence</h2>
						<form method="get" action="produits.php">		
							<p>
								Veuillez indiquer la référence produit (entièrement ou en partie) ci-dessous :
							</p>
							<p>
								<label>
									<input type="text" placeholder="Référence Produit" name="Ref_Prod" class="form-control"/>
								</label>
								<label>
									<input type="hidden" name="A_appuye_Ref_Prod" value="TRUE" />
								</label>
								<label>
									<button type="submit" class="btn btn-primary">Rechercher</button>
								</label>			
							</p>
						</form>
					</div>
					
					<div class="col-md-6">
						<h2>Rechercher un produit par type</h2>
						<form method="get" action="produits.php">		
							<p>
								Quel type de produit recherchez-vous ?
							</p>
							<p>
								<label>
									<select name="Type_Prod" class="form-control">
										<option value="1">Ampoule</option>
										<option value="2">Torche</option>
										<option value="3">Projecteur</option>
									</select>
								</label>
								<label>
									<input type="hidden" name="A_appuye_Type_Prod" value="TRUE" />
								</label>
								<label>
									<button type="submit" class="btn btn-primary">OK</button>
								</label>			
							</p>
						</form>
					</div>
				</div>
<?php
				if (isset($_GET['Ref_Prod']) OR isset($_GET['Type_Prod'])) // Si l'utilisateur est arrivé sans modifier l'URL (sans enlever les tags php de l'URL)			
				{
?>
					<hr>
<?php
				}

					// Création d'une variable pour éviter le problème de la référence nulle
					$ref_ou_type_existe = FALSE;

					
					if(isset($ref))
					{
						// Récupération des produits contenant dans sa référence ce qu'a rentré l'utilisateur
						$recherche_produit = $bd->query("	SELECT *
															FROM Produit
															WHERE Reference_Produit LIKE '%".$ref."%'
															ORDER BY Libelle_Produit");

						// Calcul du nombre de résultats obtenus
						$nb_resultats = $recherche_produit->rowCount();

						// Edition de la variable anti-référence nulle
						$ref_ou_type_existe = TRUE;
					}
					else if (isset($type))
					{
						// Récupération des produits du type qu'a demandé l'utilisateur
						$recherche_produit = $bd->query("	SELECT *
															FROM Produit
															WHERE ID_Type_Produit = '".$type."'
															ORDER BY Libelle_Produit ");

						// Calcul du nombre de résultats obtenus
						$nb_resultats = $recherche_produit->rowCount();
						
						// Edition de la variable anti-référence nulle
						$ref_ou_type_existe = TRUE;
					}
					
					// echo ("--'".$nb_resultats."'--");
				
					if ($ref_ou_type_existe) // S'il y a au moins un élément ayant dans sa référence ce qu'a rentré l'utilisateur
					{
?>
						<div class="row">
							<div class="col-md-12">
								<h1>Résultat : <?php echo $nb_resultats?> produit(s)</h1>
							</div>
						</div>
						<div>	
<?php
						if($nb_resultats > 1) // S'il y en a plusieurs, on affiche toutes les informations essentielles des produits
						{
							while ($donnees = $recherche_produit->fetch()) // Tant qu'il y a des produits validant la requête, on les affiche
							{
								// Mise en place de la correspondance ID_Type_Produit/Type_Produit
								switch($donnees['ID_Type_Produit'])
								{
									case 1: 
										$libelle_type = 'Ampoule';
										break;
										
									case 2:
										$libelle_type = 'Torche';
										break;
									
									case 3:
										$libelle_type = 'Projecteur';
										break;
									default:
										$libelle_type = 'Non spécifié';
								}
?>										
								<div class="col-md-4">
<?php
									if($donnees['Qte_totale_en_stock']==0)// S'il n'y a plus de produit, la "fiche-résumé" sera rouge
									{
?>								
										<div class="panel panel-danger">
<?php
									}
									else if($donnees['Qte_totale_en_stock']<=15) // S'il y a moins d'une certaine quantité de produits (ici 15), la "fiche-résumé" sera jaune
									{
?>
										<div class="panel panel-warning">
<?php
									}
									else // Sinon, il y a plus d'une certaine quantité de produits (ici 15), et donc la "fiche-résumé" sera verte
									{
?>
										<div class="panel panel-success">
<?php
									}
?>
										<div class="panel-heading">
											<h1 class="panel-title"><strong><a href="produits.php?Ref_Prod=<?php echo $donnees['Reference_Produit']; ?>&A_appuye_Ref_Prod=TRUE" title="Fiche Produit" target="_blank"><?php echo $donnees['Libelle_Produit']; ?></a></strong></h1>
										</div>
										<div class="panel-body">
											<strong><em><?php echo $donnees['Reference_Produit']; ?></em></strong><br />
											<?php echo $libelle_type; ?><br />
											<em>Prix de vente TTC : </em><?php echo $donnees['Prix_Vente_Produit_TTC']; ?> €<br />
											<em>Qté totale en stock : </em><?php echo $donnees['Qte_totale_en_stock']; ?><br />
										</div>
									</div>
								</div>
<?php		
							}
						}
						else if ($nb_resultats == 1) // S'il n'y a qu'un produit, on va afficher une fiche produit
						{
							while ($donnees = $recherche_produit->fetch()) // On affiche le seul produit validant la requête
							{
								// Mise en place de la correspondance ID_Type_Produit/Type_Produit
								switch($donnees['ID_Type_Produit'])
								{
									case 1: 
										$libelle_type = 'Ampoule';
										break;
										
									case 2:
										$libelle_type = 'Torche';
										break;
									
									case 3:
										$libelle_type = 'Projecteur';
										break;
									default:
										$libelle_type = 'Non spécifié';
								}
?>					
								<div class="col-md-12">					
<?
									if($donnees['Qte_totale_en_stock']==0)// S'il n'y a plus de produit, la "fiche-résumé" sera rouge
									{
?>								
										<div class="panel panel-danger">
<?php
									}
									else if($donnees['Qte_totale_en_stock']<=15) // S'il y a moins d'une certaine quantité de produits (ici 15), la "fiche-résumé" sera jaune
									{
?>
										<div class="panel panel-warning">
<?php
									}
									else // Sinon, il y a plus d'une certaine quantité de produits (ici 15), et donc la "fiche-résumé" sera verte
									{
?>
										<div class="panel panel-success">
<?php
									}
?>
									<div class="panel-heading">
										<h1 class="panel-title"><strong><a href="produits.php?Ref_Prod=<?php echo $donnees['Reference_Produit']; ?>&A_appuye_Ref_Prod=TRUE" title="Fiche Produit"><?php echo $donnees['Libelle_Produit']; ?></a></strong></h1>
									</div>
									<div class="panel-body">
										<strong>Référence Produit : </strong><em><?php echo $donnees['Reference_Produit']; ?></em><br />
										<strong>Type Produit : </strong><em><?php echo $libelle_type; ?></em><br />
										<strong>Prix de vente TTC : </strong><em><?php echo $donnees['Prix_Vente_Produit_TTC']; ?> €</em><br />
										<strong>Qté totale en stock : </strong><em><?php echo $donnees['Qte_totale_en_stock']; ?></em><br />
<?php
										$ref_prod_a_chercher = $donnees['Reference_Produit'];
										
										// Récupération de la quantité en stock disponible par point de stock
										$qte_en_stock = $bd->query(" 	SELECT Etre_stocke.Qte_stockee, Point_de_stockage.ID_Pt_Stock, Point_de_stockage.Ville_Pt_Stock
																		FROM Etre_stocke, Point_de_stockage
																		WHERE Etre_stocke.Reference_Produit = '".$ref_prod_a_chercher."'
																		AND Etre_stocke.ID_Pt_Stock = Point_de_stockage.ID_Pt_Stock
																		ORDER BY Point_de_stockage.ID_Pt_Stock");
?>											
										<ul>
<?php
											while ($donnees = $qte_en_stock->fetch()) // Tant qu'il y a des points de stock, on les affiche
											{
?>
												<li> <?php echo $donnees['Qte_stockee']; ?> à  <?php echo $donnees['Ville_Pt_Stock']; ?></li>
<?php
											}
											$qte_en_stock->closeCursor();
?>
										</ul>
										
										<strong>Critères :</strong>
<?php
										
										// Récupération des critères du produit
										$criteres_produit = $bd->query(" 	SELECT Critere.Nom_Critere, Critere.Valeur_Critere 
																			FROM Avoir, Critere
																			WHERE Avoir.Reference_Produit = '".$ref_prod_a_chercher."'
																			AND Avoir.ID_Critere = Critere.ID_Critere
																			ORDER BY Critere.Nom_Critere");
									
										// echo ("--'".$criteres_produit."'--");
									
										// Calcul du nombre de résultats obtenus
										$nb_criteres = $criteres_produit->rowCount();
										
										if($nb_criteres > 0) // S'il y a des critères
										{
?>
											<ul>
<?php
												while ($donnees = $criteres_produit->fetch()) // Tant qu'il y a des critères, on les affiche
												{
?>
													<li> <?php echo $donnees['Nom_Critere']; ?> - <?php echo $donnees['Valeur_Critere']; ?></li>
											
<?php
												}
												$criteres_produit->closeCursor();
?>
											</ul>
<?php												
										}
										else // Il n'y a pas de critère
										{
?>
											Aucun critère
<?php
										}
?>											
									</div>
									</div>
								</div>
<?php		
							}
						}
						else // S'il n'y a aucun produit validant la requête
						{								
?>
							Aucun produit n'a été trouvé !<br />
<?php
						}
						$recherche_produit->closeCursor();
?>
						</div>
<?php					
					}
?>	
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
<?php
}
else // L'utilisateur n'est pas connecté
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
			
			<span id="Connexion_necessaire"></span>
		</body>
	</html>
<?php
	header("Refresh:2 ; URL=index.php");
}
?>