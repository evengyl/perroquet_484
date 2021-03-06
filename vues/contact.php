<div class="secondary" id="head"></div>
<div class="container">
	<div class="row">
		<article class="col-sm-9 maincontent">
			<header class="page-header">
				<h1 class="page-title">Contactez nous</h1>
			</header><?
			if($status_send_mail == "form")
			{?>
				<form action="#" method="post" >
					<div class="row">
						<div class="col-xs-12 col-sm-4">
							<input class="form-control" name="name" type="text" required value="<?=(isset($_app->user->name)?$_app->user->name:'') ?>" placeholder="Votre Nom et/ou Prénom">
						</div>
						<div class="col-xs-12 col-sm-4">
							<input class="form-control" name="email" type="email" required value="<?=(isset($_app->user->email)?$_app->user->email:'') ?>" placeholder="Adresse Email">
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-xs-12 col-sm-12">
							<textarea placeholder="Votre message / demande" required name="text" type="text" class="form-control" rows="9"></textarea>
						</div>
					</div>
					<br>
					<div class="row">
						<div class="col-xs-12 col-sm-12 text-right">
							<input type="hidden" name="rand_id_form_contact_us" value="<?= $rand_id_form_contact_us ?>">
							<input class="btn btn-action" type="submit" value="Envoyer">
						</div>
					</div>
				</form><?
			}
			else if($status_send_mail == "sent")
			{
				?><h4><p class="text-muted">Votre message à bien été envoyé, nous vous répondrons dans les plus bref délais.</p></h4><?
			}
			else if($status_send_mail == "error")
			{
				?><h4><p style='color:red;' class="text-muted"><?= $message_send_mail_contact_us; ?></p></h4><?
			}?>
		</article>

		<aside class="col-xs-12 col-sm-3 sidebar sidebar-right">
			<div class="widget">
				<h4>Détails de la page contact</h4>
				<address>
					<p class="text-muted">La page de contact est fait pour vous permettre de contacter le services clients et maintenances de <?= $_app->site_name; ?></p>
					<hr>
					<p class="text-muted">Pour toutes question relative à une publications d'annonces ou un prix ou même un soucis avec une annonces en générale,<br>
					Préféré d'abbord passer par le service qu'il vous est fourni sur l'annonce, celui-ci permet de prendre contact directement par message avec le propriétaire de l'annonce</p>
					<hr>
				</address>
			</div>
		</aside>
	</div>
</div>
