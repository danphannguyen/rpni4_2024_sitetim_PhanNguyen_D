@extends('gabarit')

@section('title')
Formation
@endsection

@section('contenu')

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
    {!! $tDonnees[12]->getTitre() !!}
</div>

<section id="headerFormation" class="whiteGlass">
    <picture id="drawFormation2">
        <source srcset="./liaisons/img/Dessin_Formation_2_992.png" media="(min-width: 992px)" />
        <source srcset="./liaisons/img/Dessin_Formation_2_768.png" media="(min-width: 768px)" />
        <img src="./liaisons/img/Dessin_Formation_2_320.png" alt="dessin décoratif" />
    </picture>
    {!! $tDonnees[12]->getTexte() !!}
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

    <div id="conceptionDisplay" class="contentDisplayFormation" style="display: none;">
        {!! $tDonnees[13]->getTitre() !!}
        {!! $tDonnees[13]->getTexte() !!}
    </div>

    <div id="mediasDisplay" class="contentDisplayFormation" style="display: none;">
        {!! $tDonnees[14]->getTitre() !!}
        {!! $tDonnees[14]->getTexte() !!}
    </div>

    <div id="integrationDisplay" class="contentDisplayFormation" style="display: flex;">
        {!! $tDonnees[15]->getTitre() !!}
        {!! $tDonnees[15]->getTexte() !!}
    </div>

    <div id="programmationDisplay" class="contentDisplayFormation" style="display: none;">
        {!! $tDonnees[16]->getTitre() !!}
        {!! $tDonnees[16]->getTexte() !!}
    </div>

    <div id="autresDisplay" class="contentDisplayFormation" style="display: none;">
        {!! $tDonnees[17]->getTitre() !!}
        {!! $tDonnees[17]->getTexte() !!}
    </div>

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