@extends('gabarit')

@section('title')
Stage
@endsection

<?php

use App\Utilitaires\InfosBdd;

$textes = new InfosBdd();
?>

@section('contenu')
<h1 class="mainTitle"> LES STAGES </h1>

<picture id="bgStage1">
    <source srcset="./liaisons/img/Bg_Stage_1_992.png" media="(min-width: 992px)" />
    <source srcset="./liaisons/img/Bg_Stage_1_768.png" media="(min-width: 768px)" />
    <img class="bgImg" src="./liaisons/img/Bg_Stage_1_320.png" alt="image décorative 1" />
</picture>

<picture id="bgStage2">
    <source srcset="./liaisons/img/Bg_Stage_2_992.png" media="(min-width: 992px)" />
    <source srcset="./liaisons/img/Bg_Stage_2_768.png" media="(min-width: 768px)" />
    <img class="bgImg" src="./liaisons/img/Bg_Stage_2_320.png" alt="image décorative 1" />
</picture>

<section id="stageHeaderWrapper" class="whiteGlass">
    <picture id="drawStage1">
        <source srcset="./liaisons/img/Dessin_Stage_1_992.png" media="(min-width: 992px)" />
        <source srcset="./liaisons/img/Dessin_Stage_1_768.png" media="(min-width: 768px)" />
        <img src="./liaisons/img/Dessin_Stage_1_320.png" alt="dessin décoratif" />
    </picture>
    {!! $textes->getTextes(24) !!}
    <hr>
    {!! $textes->getTextes(25) !!}

    <picture id="drawStage3">
        <source srcset="./liaisons/img/Dessin_Stage_3_992.png" media="(min-width: 992px)" />
        <source srcset="./liaisons/img/Dessin_Stage_3_768.png" media="(min-width: 768px)" />
        <img src="./liaisons/img/Dessin_Stage_3_320.png" alt="dessin décoratif" />
    </picture>
</section>

<section id="stageContentWrapper" class="whiteGlass">
    <picture id="drawStage2">
        <source srcset="./liaisons/img/Dessin_Stage_2_992.png" media="(min-width: 992px)" />
        <source srcset="./liaisons/img/Dessin_Stage_2_768.png" media="(min-width: 768px)" />
        <img src="./liaisons/img/Dessin_Stage_2_320.png" alt="dessin décoratif" />
    </picture>
    <h2>FUTUR.E.S ÉTUDIANT.E.S</h2>
    <p>Le programme TIM du Cégep de Sainte-Foy offre des stages en Alternance travail études pendant l’été et un stage crédité à la session 6 qui peut être réalisé en France. Contacter <a class="textLink" href="index.php?controleur=site&action=contact&responsable=1">Pascal Larose</a> pour en savoir plus.</p>
</section>

<section id="stageFooterWrapper" class="whiteGlass">
    <picture id="drawStage4">
        <source srcset="./liaisons/img/Dessin_Stage_4_992.png" media="(min-width: 992px)" />
        <source srcset="./liaisons/img/Dessin_Stage_4_768.png" media="(min-width: 768px)" />
        <img src="./liaisons/img/Dessin_Stage_4_320.png" alt="dessin décoratif" />
    </picture>
    <div id="stageFinauxWrapper">
        <div class="stageTitleWrapper">
            <h2>Stages</h2>
            <div class="titreEntourerWrapper">
                <h2>Finaux</h2>
                <img src="./liaisons/svg/draw-round1.svg" alt="">
            </div>
        </div>
        <div class="stageContentWrapper">
        {!! $textes->getTextes(27) !!}
        </div>
    </div>

    <div id="stageAteWrapper">
        <div class="stageTitleWrapper">
            <h2>STAGE</h2>
            <div class="titreEntourerWrapper">
                <h2>ATE</h2>
                <img src="./liaisons/svg/draw-round2.svg" alt="">
            </div>
        </div>
        {!! $textes->getTextes(26) !!}
    </div>

    <div id="stageButtonWrapper">
        <button id="finauxButton" class="mainButton">Finaux</button>
        <button id="ateButton" class="secondButton">ATE</button>
    </div>

</section>


@endsection

@section('script')
<script src="./liaisons/js/stage.js"></script>
@endsection