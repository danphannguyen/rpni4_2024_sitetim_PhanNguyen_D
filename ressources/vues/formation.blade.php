@extends('gabarit')

@section('title')
Formation
@endsection

@section('contenu')

<?php

use App\Utilitaires\InfosBdd;

$textes = new InfosBdd();
?>

<picture id="bgFormation1">
    <source srcset="./liaisons/img/Bg_Formation_1_992.png" media="(min-width: 992px)" />
    <source srcset="./liaisons/img/Bg_Formation_1_768.png" media="(min-width: 768px)" />
    <img class="bgImg" src="./liaisons/img/Bg_Formation_1_320.png" alt="image décorative 1" />
</picture>

<picture id="bgFormation2">
    <source srcset="./liaisons/img/Bg_Formation_2_992.png" media="(min-width: 992px)" />
    <source srcset="./liaisons/img/Bg_Formation_2_768.png" media="(min-width: 768px)" />
    <img class="bgImg" src="./liaisons/img/Bg_Formation_2_320.png" alt="image décorative 1" />
</picture>


<div style="position: relative;">
    <picture id="drawFormation1">
        <source srcset="./liaisons/img/Dessin_Formation_1_992.png" media="(min-width: 992px)" />
        <source srcset="./liaisons/img/Dessin_Formation_1_768.png" media="(min-width: 768px)" />
        <img src="./liaisons/img/Dessin_Formation_1_320.png" alt="dessin décoratif" />
    </picture>
    <h1 class="mainTitle"> La Formation </h1>
</div>

<section id="headerFormation" class="whiteGlass">
    <picture id="drawFormation2">
        <source srcset="./liaisons/img/Dessin_Formation_2_992.png" media="(min-width: 992px)" />
        <source srcset="./liaisons/img/Dessin_Formation_2_768.png" media="(min-width: 768px)" />
        <img src="./liaisons/img/Dessin_Formation_2_320.png" alt="dessin décoratif" />
    </picture>
    {!! $textes->getTextes(12) !!}
</section>

<section id="contentFormation" class="whiteGlass">
    <h2>LES AXES DE LA FORMATION</h2>
    <hr>
    <div id="filterFormationWrapper">
        <button id="integrationButton" class="formationButton mainButton">Intégration</button>
        <button id="conceptionButton" class="formationButton secondButton">Conception</button>
        <button id="programmationButton" class="formationButton secondButton">Programmation</button>
        <button id="mediasButton" class="formationButton secondButton">Médias</button>
        <button id="autresButton" class="formationButton secondButton">Autres</button>
    </div>
    <hr>

    {!! $textes->getTextes(13) !!}
    {!! $textes->getTextes(14) !!}
    {!! $textes->getTextes(15) !!}
    {!! $textes->getTextes(16) !!}
    {!! $textes->getTextes(17) !!}

    <picture id="drawFormation3">
        <source srcset="./liaisons/img/Dessin_Formation_3_992.png" media="(min-width: 992px)" />
        <source srcset="./liaisons/img/Dessin_Formation_3_768.png" media="(min-width: 768px)" />
        <img src="./liaisons/img/Dessin_Formation_3_320.png" alt="dessin décoratif" />
    </picture>
</section>


@endsection

@section('script')
<script src="./liaisons/js/formation.js"></script>
@endsection