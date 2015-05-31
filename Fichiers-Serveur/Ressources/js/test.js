  $(function() {
    var leFocus;  
    $("input#ID, input#MDP").focus( function() { 
      leFocus = '#' + $(this).attr('id');        
      $(leFocus).css('background-color', '#eeeeee');
    }); 
    $(":input#ID, input#MDP").blur( function() { 
      leFocus = '#' + $(this).attr('id');        
      $(leFocus).css('background-color', '#ffffff');
    }); 
  });
  
  // $(function() {
	// $('nav').css('background-color', '#006f7b');
	// $('a.navbar-brand').css('color', '#ffffff');
	// $('a.navbar-brand').mouseover(	function() {
									// $(this).css('color', '#eeeeee');
									// });
	
	// $('a.navbar-brand').mouseout(	function() {
									// $(this).css('color', '#ffffff');
									// });

  // });
  
  $(function() {
	$('span#ID_ou_MDP_invalide').hide(	function message() {
										alert('ATTENTION - Votre identifiant ou votre mot de passe est invalide, veuillez réessayer.');
										});
  });
  
  $(function() {
	$('span#Session_expiree').hide(	function message() {
									alert('ATTENTION - Votre session a expiré, veuillez réessayer.');
									});		
  });
  
  $(function() {  
	$('span#Connexion_necessaire').hide( 	function message() {
											alert('ATTENTION - Vous devez être connecté pour accéder à cette page.');
											});
  });
  
  // $(function() {
	// $('button#formulaire_deconnexion').load('index.php');
  // });
  
  // $(function() {
	// $('div#ID_ou_MDP_faux').hide();
	// $('div#Session_expiree').hide();
  // });
  
  // $(function() {
	// $('button#connexion').click(	function() {
										// $.post(
											// 'traitement.php', 
											// {
												// Log_Abo: $('input#ID').val(), 
												// MDP_Abo: $('input#MDP').val(),
											// },
											
											// function(data) {
												// if(data == "Erreur Session expirée"){
													// $("span#resultat").html("<div id=\"Session_expiree\" class=\"alert alert-danger\" role=\"alert\"><strong>Attention !</strong> Session expirée, veuillez réessayer.</div>");
												// }
												// else if(data == "Erreur ID MDP"){
													// $("span#resultat").html("<div id=\"ID_ou_MDP_faux\" class=\"alert alert-danger\" role=\"alert\"><strong>Attention !</strong> Identifiant ou mot de passe erroné, veuillez réessayer.</div>");
												// }
												// else
												// {
													// $('form#formulaire_connexion').hide();
													// $('form#formulaire_deconnexion').html("			  <form id=\"formulaire_connexion\" class=\"navbar-form navbar-right\" method=\"post\" ><button type=\"submit\" id=\"Connexion\" class=\"btn btn-danger\">Déconnexion</button>");
												// }
											
											// },
											// 'text'
										// );
									// });
  // });
  