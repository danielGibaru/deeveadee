

<div id='onedvd' class="container-fluid">
	<div class="row">
		<div class="col-md-3">
            <img src="/assets/img/télécharger.jpg" alt="">
		</div>
		<div class="col-md-9">
            <div class="panel panel-default">
                <div class="panel-body">
                    <h3> Titre : <?= $Dvd['titreD']; ?> </h3>
                    <h3> Auteur : <?= $Dvd['auteurD']; ?> </h3>
                    <h3> Année : <?= $Dvd['annéeD']; ?> </h3>
                    <h3> Catégorie : <?= $Dvd['catégorieD']; ?></h3>
                    <h3> Nombre d'exemplaire : <?= $Dvd['nombreD']; ?></h3>
                    <h3>Societe : <?= $Dvd['societeD']; ?></h3>
                    <button type="button" name="button" class="btn btn-primary" value="">Louer</button>
                </div>
            </div>
		</div>
	</div>
</div>
