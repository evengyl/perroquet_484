<div style="margin-top:15px;" class="col-xs-12 panel panel-default">
	<div style="margin-top:15px;" class="panel-heading" role="tab" id="headingOne">
		<h4>
			Type d'annonce<br>
			<small class="text-muted thin">(Ce sera la / les catégorie(s) de votre annonce)</small>
		</h4>
	</div>
	<div class="panel-body">
		<div class="container text-center">
		    <div class="row"><?
		        foreach($array_type_vacances as $row_type_vacances)
		        {?>
		            <div class="col-sm-6 col-md-4">
		                <div class="thumbnail"><?
			                if(isset($row_type_vacances->icon))
		                        echo $row_type_vacances->icon;?>
		                    <hr>
		                    <div class="caption css-label">
		                        <h3 style="margin-top:0px;"><?= $row_type_vacances->title; ?></h3>
		                        <p class="text-muted"><?= $row_type_vacances->text; ?></p>
						      	<input
							      	class="test"
							      	id="toggle_<?=$row_type_vacances->name_sql; ?>"
									name="type_vacances[]" 
									type="checkbox" 
									value="<?= $row_type_vacances->name_sql; ?>"
									<?= (isset($last_announce->array_type_vacances) && in_array($row_type_vacances->name_sql, $last_announce->array_type_vacances))?'checked':''; ?>
									>

								<label for="toggle_<?=$row_type_vacances->name_sql; ?>">Ce type me parait approprié</label>
		                    </div>
		                </div>
		            </div><?
		        }?>
		    </div>
		</div>
	</div>
</div>
