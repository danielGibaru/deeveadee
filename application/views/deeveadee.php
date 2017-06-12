<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Deeveadee</title>
        <link  href="/assets/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="/assets/css/master.css">
        <link href="/assets/fonts/Comfortaa-Regular.ttf" rel="stylesheet">
    </head>
    <body>

        <div id="nav">
            <ul id="navbar" class="nav nav-tabs">
                <li role="presentation" class="active"><a href="#">accueil</a></li>
                <li role="presentation"><a href="#">LOG</a></li>
                <li role="presentation"><a href="http://deeveadee.my/index.php/admin">Admin</a></li>
            </ul>
            <img id="img" src="/assets/img/maxresdefault.jpg" alt="">
            <div id='scale'></div>
            <h1 id="titre" style="font-family : Comfortaa">Deeveadee</h1>
            <p  id="descri" style="font-family : Comfortaa">nous sommes une entreprise mieux que videofutur <br>
                                                            qui loue pas des VHS mais des DVD mais on aime le streaming
                                                            <br>TODO poney a la plage et le cheval pousse mamie dans <br>
                                                            l'hopital qui tricote</p>

    </div>
    <div class="container-fluid" id="liste">
        <div class="row">
            <div class="col-md-1">
            </div>
                <div class="col-md-10">
                    <h1 class="text-center" style="font-family : Comfortaa"> ça vient de sortir</h1>
                        <div class="row">

                        <?php foreach ($Dvd as $dvd_R): ?>
                            <div id='dvd' class="col-xs-5 col-md-3  text-center">
                                <h1><?= $dvd_R['titreD'] ?></h1>
                            <a href="<?= site_url('deeveadee/view/'.$dvd_R['numD']); ?>" class="thumbnail">
                                <img src="/assets/img/télécharger.jpg" alt="...">
                            </a>
                                <div class="caption">
                                    <h3><?= $dvd_R['auteurD'] ?></h3>
                                    <p><?= $dvd_R['catégorieD'] ?></p>
                                    <p><?= $dvd_R['annéeD'] ?></p>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
    <div class="col-md-1">
    </div>
    </div>
