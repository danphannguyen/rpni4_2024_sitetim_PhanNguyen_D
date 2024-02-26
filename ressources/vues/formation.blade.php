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
    {!! $tDonnees["titre12"] !!}
</div>

<section id="headerFormation" class="whiteGlass">
    <picture id="drawFormation2">
        <source srcset="./liaisons/img/Dessin_Formation_2_992.png" media="(min-width: 992px)" />
        <source srcset="./liaisons/img/Dessin_Formation_2_768.png" media="(min-width: 768px)" />
        <img src="./liaisons/img/Dessin_Formation_2_320.png" alt="dessin décoratif" />
    </picture>
    {!! $tDonnees["texte12"] !!}
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
    {!! $tDonnees["titre13"] !!}
    {!! $tDonnees["texte13"] !!}
    </div>

    <div id="conceptionDisplay" class="contentDisplayFormation" style="display: none;">
    {!! $tDonnees["titre14"] !!}
    {!! $tDonnees["texte14"] !!}
    </div>

    <div id="conceptionDisplay" class="contentDisplayFormation" style="display: flex;">
    {!! $tDonnees["titre15"] !!}
    {!! $tDonnees["texte15"] !!}
    </div>

    <div id="conceptionDisplay" class="contentDisplayFormation" style="display: none;">
    {!! $tDonnees["titre16"] !!}
    {!! $tDonnees["texte16"] !!}
    </div>

    <div id="conceptionDisplay" class="contentDisplayFormation" style="display: none;">
    {!! $tDonnees["titre17"] !!}
    {!! $tDonnees["texte17"] !!}
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